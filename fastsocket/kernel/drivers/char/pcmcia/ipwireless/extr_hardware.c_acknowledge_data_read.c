
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_hardware {scalar_t__ hw_version; TYPE_1__* memory_info_regs; scalar_t__ base_port; } ;
struct TYPE_2__ {int memreg_pc_interrupt_ack; } ;


 int DCR_RXDONE ;
 scalar_t__ HW_VERSION_1 ;
 scalar_t__ IODCR ;
 int MEMRX_PCINTACKK ;
 int outw (int ,scalar_t__) ;
 int writew (int ,int *) ;

__attribute__((used)) static void acknowledge_data_read(struct ipw_hardware *hw)
{
 if (hw->hw_version == HW_VERSION_1)
  outw(DCR_RXDONE, hw->base_port + IODCR);
 else
  writew(MEMRX_PCINTACKK,
    &hw->memory_info_regs->memreg_pc_interrupt_ack);
}
