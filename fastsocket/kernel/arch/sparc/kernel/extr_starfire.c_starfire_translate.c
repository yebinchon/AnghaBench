
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct starfire_irqinfo {unsigned int hwmid; unsigned long* imap_slots; int * tregs; struct starfire_irqinfo* next; } ;


 int panic (char*) ;
 int printk (char*) ;
 int prom_halt () ;
 int prom_printf (char*,unsigned long) ;
 struct starfire_irqinfo* sflist ;
 int upa_writel (unsigned int,int ) ;

unsigned int starfire_translate(unsigned long imap,
    unsigned int upaid)
{
 struct starfire_irqinfo *p;
 unsigned int bus_hwmid;
 unsigned int i;

 bus_hwmid = (((unsigned long)imap) >> 33) & 0x7f;
 for (p = sflist; p != ((void*)0); p = p->next)
  if (p->hwmid == bus_hwmid)
   break;
 if (p == ((void*)0)) {
  prom_printf("XFIRE: Cannot find irqinfo for imap %016lx\n",
       ((unsigned long)imap));
  prom_halt();
 }
 for (i = 0; i < 32; i++) {
  if (p->imap_slots[i] == imap ||
      p->imap_slots[i] == 0UL)
   break;
 }
 if (i == 32) {
  printk("starfire_translate: Are you kidding me?\n");
  panic("Lucy in the sky....");
 }
 p->imap_slots[i] = imap;


 upaid = (((upaid & 0x3c) << 1) |
   ((upaid & 0x40) >> 4) |
   (upaid & 0x3));

 upa_writel(upaid, p->tregs[i]);

 return i;
}
