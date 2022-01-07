
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int base_addr; } ;


 size_t ARRAY_SIZE (int *) ;
 int ENODEV ;
 int * h8300_ne_base ;
 size_t h8300_ne_count ;
 int * h8300_ne_irq ;

__attribute__((used)) static inline int init_dev(struct net_device *dev)
{
 if (h8300_ne_count < ARRAY_SIZE(h8300_ne_base)) {
  dev->base_addr = h8300_ne_base[h8300_ne_count];
  dev->irq = h8300_ne_irq[h8300_ne_count];
  h8300_ne_count++;
  return 0;
 } else
  return -ENODEV;
}
