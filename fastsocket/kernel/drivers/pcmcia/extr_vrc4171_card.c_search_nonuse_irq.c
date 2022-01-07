
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vrc4171_irq_mask ;

__attribute__((used)) static inline int search_nonuse_irq(void)
{
 int i;

 for (i = 0; i < 16; i++) {
  if (vrc4171_irq_mask & (1 << i)) {
   vrc4171_irq_mask &= ~(1 << i);
   return i;
  }
 }

 return -1;
}
