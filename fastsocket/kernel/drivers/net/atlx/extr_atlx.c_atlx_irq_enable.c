
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atlx_adapter {TYPE_1__ hw; } ;


 int IMR_NORMAL_MASK ;
 scalar_t__ REG_IMR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void atlx_irq_enable(struct atlx_adapter *adapter)
{
 iowrite32(IMR_NORMAL_MASK, adapter->hw.hw_addr + REG_IMR);
 ioread32(adapter->hw.hw_addr + REG_IMR);
}
