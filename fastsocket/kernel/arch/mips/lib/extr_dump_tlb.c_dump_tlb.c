
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BARRIER () ;
 unsigned long CKSEG0 ;
 unsigned long long PAGE_MASK ;
 int msk2str (unsigned int) ;
 int printk (char*,...) ;
 unsigned long read_c0_entryhi () ;
 unsigned long long read_c0_entrylo0 () ;
 unsigned long long read_c0_entrylo1 () ;
 unsigned int read_c0_index () ;
 unsigned int read_c0_pagemask () ;
 int tlb_read () ;
 int write_c0_entryhi (unsigned long) ;
 int write_c0_index (unsigned int) ;

__attribute__((used)) static void dump_tlb(int first, int last)
{
 unsigned long s_entryhi, entryhi, asid;
 unsigned long long entrylo0, entrylo1;
 unsigned int s_index, pagemask, c0, c1, i;

 s_entryhi = read_c0_entryhi();
 s_index = read_c0_index();
 asid = s_entryhi & 0xff;

 for (i = first; i <= last; i++) {
  write_c0_index(i);
  BARRIER();
  tlb_read();
  BARRIER();
  pagemask = read_c0_pagemask();
  entryhi = read_c0_entryhi();
  entrylo0 = read_c0_entrylo0();
  entrylo1 = read_c0_entrylo1();


  if ((entryhi & ~0x1ffffUL) != CKSEG0
      && (entryhi & 0xff) == asid) {



   int width = 11;




   printk("Index: %2d pgmask=%s ", i, msk2str(pagemask));

   c0 = (entrylo0 >> 3) & 7;
   c1 = (entrylo1 >> 3) & 7;

   printk("va=%0*lx asid=%02lx\n",
          width, (entryhi & ~0x1fffUL),
          entryhi & 0xff);
   printk("\t[pa=%0*llx c=%d d=%d v=%d g=%d] ",
          width,
          (entrylo0 << 6) & PAGE_MASK, c0,
          (entrylo0 & 4) ? 1 : 0,
          (entrylo0 & 2) ? 1 : 0,
          (entrylo0 & 1) ? 1 : 0);
   printk("[pa=%0*llx c=%d d=%d v=%d g=%d]\n",
          width,
          (entrylo1 << 6) & PAGE_MASK, c1,
          (entrylo1 & 4) ? 1 : 0,
          (entrylo1 & 2) ? 1 : 0,
          (entrylo1 & 1) ? 1 : 0);
  }
 }
 printk("\n");

 write_c0_entryhi(s_entryhi);
 write_c0_index(s_index);
}
