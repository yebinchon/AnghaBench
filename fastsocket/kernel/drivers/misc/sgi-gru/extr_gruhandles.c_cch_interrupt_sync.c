
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_context_configuration_handle {int opc; } ;


 int CCHOP_INTERRUPT_SYNC ;
 int cchop_interrupt_sync ;
 int start_instruction (struct gru_context_configuration_handle*) ;
 int wait_instruction_complete (struct gru_context_configuration_handle*,int ) ;

int cch_interrupt_sync(struct gru_context_configuration_handle
         *cch)
{
 cch->opc = CCHOP_INTERRUPT_SYNC;
 start_instruction(cch);
 return wait_instruction_complete(cch, cchop_interrupt_sync);
}
