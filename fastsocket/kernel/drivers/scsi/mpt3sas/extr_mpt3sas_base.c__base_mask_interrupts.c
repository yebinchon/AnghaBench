
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct MPT3SAS_ADAPTER {int mask_interrupts; TYPE_1__* chip; } ;
struct TYPE_2__ {int HostInterruptMask; } ;


 int MPI2_HIM_DIM ;
 int MPI2_HIM_RESET_IRQ_MASK ;
 int MPI2_HIM_RIM ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void
_base_mask_interrupts(struct MPT3SAS_ADAPTER *ioc)
{
 u32 him_register;

 ioc->mask_interrupts = 1;
 him_register = readl(&ioc->chip->HostInterruptMask);
 him_register |= MPI2_HIM_DIM + MPI2_HIM_RIM + MPI2_HIM_RESET_IRQ_MASK;
 writel(him_register, &ioc->chip->HostInterruptMask);
 readl(&ioc->chip->HostInterruptMask);
}
