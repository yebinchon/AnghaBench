
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_context_configuration_handle {int opc; } ;


 int CCHOP_START ;
 int cchop_start ;
 int start_instruction (struct gru_context_configuration_handle*) ;
 int wait_instruction_complete (struct gru_context_configuration_handle*,int ) ;

int cch_start(struct gru_context_configuration_handle *cch)
{
 cch->opc = CCHOP_START;
 start_instruction(cch);
 return wait_instruction_complete(cch, cchop_start);
}
