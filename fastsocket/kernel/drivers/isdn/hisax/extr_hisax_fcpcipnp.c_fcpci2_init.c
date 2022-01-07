
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fritz_adapter {scalar_t__ io; } ;


 scalar_t__ AVM_STATUS0 ;
 int AVM_STATUS0_ENA_IRQ ;
 int AVM_STATUS0_RES_TIMER ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void fcpci2_init(struct fritz_adapter *adapter)
{
 outb(AVM_STATUS0_RES_TIMER, adapter->io + AVM_STATUS0);
 outb(AVM_STATUS0_ENA_IRQ, adapter->io + AVM_STATUS0);

}
