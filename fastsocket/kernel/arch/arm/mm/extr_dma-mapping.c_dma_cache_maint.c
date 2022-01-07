
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int BUG_ON (int) ;



 unsigned long __pa (void const*) ;
 void dmac_clean_range (void const*,void const*) ;
 void dmac_flush_range (void const*,void const*) ;
 void dmac_inv_range (void const*,void const*) ;
 void outer_clean_range (unsigned long,unsigned long) ;
 void outer_flush_range (unsigned long,unsigned long) ;
 void outer_inv_range (unsigned long,unsigned long) ;
 int virt_addr_valid (void const*) ;

void dma_cache_maint(const void *start, size_t size, int direction)
{
 void (*inner_op)(const void *, const void *);
 void (*outer_op)(unsigned long, unsigned long);

 BUG_ON(!virt_addr_valid(start) || !virt_addr_valid(start + size - 1));

 switch (direction) {
 case 129:
  inner_op = dmac_inv_range;
  outer_op = outer_inv_range;
  break;
 case 128:
  inner_op = dmac_clean_range;
  outer_op = outer_clean_range;
  break;
 case 130:
  inner_op = dmac_flush_range;
  outer_op = outer_flush_range;
  break;
 default:
  BUG();
 }

 inner_op(start, start + size);
 outer_op(__pa(start), __pa(start) + size);
}
