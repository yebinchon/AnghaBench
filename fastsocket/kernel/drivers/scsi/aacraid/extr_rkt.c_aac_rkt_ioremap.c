
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_2__* rkt; } ;
struct aac_dev {TYPE_1__ regs; int * IndexRegs; TYPE_2__* base; int base_start; } ;
struct TYPE_5__ {int IndexRegs; } ;


 TYPE_2__* ioremap (int ,int ) ;
 int iounmap (TYPE_2__*) ;

__attribute__((used)) static int aac_rkt_ioremap(struct aac_dev * dev, u32 size)
{
 if (!size) {
  iounmap(dev->regs.rkt);
  return 0;
 }
 dev->base = dev->regs.rkt = ioremap(dev->base_start, size);
 if (dev->base == ((void*)0))
  return -1;
 dev->IndexRegs = &dev->regs.rkt->IndexRegs;
 return 0;
}
