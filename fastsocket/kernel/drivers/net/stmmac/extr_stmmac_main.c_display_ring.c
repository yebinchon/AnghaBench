
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dma_desc {int dummy; } ;


 int pr_info (char*,...) ;
 scalar_t__ virt_to_phys (struct dma_desc*) ;

__attribute__((used)) static void display_ring(struct dma_desc *p, int size)
{
 struct tmp_s {
  u64 a;
  unsigned int b;
  unsigned int c;
 };
 int i;
 for (i = 0; i < size; i++) {
  struct tmp_s *x = (struct tmp_s *)(p + i);
  pr_info("\t%d [0x%x]: DES0=0x%x DES1=0x%x BUF1=0x%x BUF2=0x%x",
         i, (unsigned int)virt_to_phys(&p[i]),
         (unsigned int)(x->a), (unsigned int)((x->a) >> 32),
         x->b, x->c);
  pr_info("\n");
 }
}
