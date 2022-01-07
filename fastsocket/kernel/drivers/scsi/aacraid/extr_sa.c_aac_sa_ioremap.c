
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * sa; } ;
struct aac_dev {int * base; int base_start; TYPE_1__ regs; } ;


 int * ioremap (int ,int ) ;
 int iounmap (int *) ;

__attribute__((used)) static int aac_sa_ioremap(struct aac_dev * dev, u32 size)
{
 if (!size) {
  iounmap(dev->regs.sa);
  return 0;
 }
 dev->base = dev->regs.sa = ioremap(dev->base_start, size);
 return (dev->base == ((void*)0)) ? -1 : 0;
}
