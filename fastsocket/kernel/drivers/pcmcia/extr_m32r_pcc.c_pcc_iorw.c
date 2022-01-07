
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int mapaddr; int ioaddr; scalar_t__ current_space; int last_iodbex; int flags; size_t last_iosize; } ;
typedef TYPE_1__ pcc_socket_t ;


 int KSEG1 ;
 int MAP_16BIT ;
 int PCADR ;
 int PCCR ;
 int PCIRC ;
 int PCIRC_BWERR ;
 int PCMOD ;
 int PCMOD_AS_IO ;
 int PCMOD_CBSZ ;
 int PCMOD_DBEX ;
 scalar_t__ as_attr ;
 scalar_t__ as_io ;
 void* dummy_readbuf ;
 int pcc_get (int,int ) ;
 int pcc_lock ;
 int pcc_set (int,int ,int) ;
 int printk (char*,unsigned long,size_t) ;
 void* readb (int) ;
 void* readw (int) ;
 TYPE_1__* socket ;
 int spin_lock_irqsave (int *,int) ;
 int spin_unlock_irqrestore (int *,int) ;
 int writeb (int ,int) ;
 int writew (unsigned short,int) ;

void pcc_iorw(int sock, unsigned long port, void *buf, size_t size, size_t nmemb, int wr, int flag)
{
 u_long addr;
 u_long flags;
 int need_ex;



 pcc_socket_t *t = &socket[sock];





 spin_lock_irqsave(&pcc_lock, flags);




 need_ex = (size > 1 && flag == 0) ? PCMOD_DBEX : 0;
 addr = t->mapaddr + port - t->ioaddr + KSEG1;




 if (t->current_space != as_io || t->last_iodbex != need_ex) {

  u_long cbsz;




  pcc_set(sock, PCCR, 0);




  cbsz = (t->flags & MAP_16BIT) ? 0 : PCMOD_CBSZ;
  pcc_set(sock, PCMOD, PCMOD_AS_IO | cbsz | need_ex);
  pcc_set(sock, PCADR, addr & 0x1ff00000);




  pcc_set(sock, PCCR, 1);
  t->current_space = as_io;
 }




 if (size == 1) {

  unsigned char *bp = (unsigned char *)buf;






  if (wr) {

   while (nmemb--) {
    writeb(*bp++, addr);
   }
  } else {

   while (nmemb--) {
       *bp++ = readb(addr);
   }
  }
 } else {

  unsigned short *bp = (unsigned short *)buf;






  if (wr) {

   while (nmemb--) {
    writew(*bp++, addr);
      }
     } else {

      while (nmemb--) {
    *bp++ = readw(addr);
      }
     }
 }



 if ((addr = pcc_get(sock, PCIRC)) & PCIRC_BWERR) {
   printk("m32r_pcc: BWERR detected : port 0x%04lx : iosize %dbit\n",
    port, size * 8);
   pcc_set(sock, PCIRC, addr);
 }




 t->last_iosize = size;
 t->last_iodbex = need_ex;



 spin_unlock_irqrestore(&pcc_lock,flags);

 return;
}
