
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_context_configuration_handle {int opc; } ;


 int CCHOP_DEALLOCATE ;
 int cchop_deallocate ;
 int start_instruction (struct gru_context_configuration_handle*) ;
 int sync_core () ;
 int wait_instruction_complete (struct gru_context_configuration_handle*,int ) ;

int cch_deallocate(struct gru_context_configuration_handle *cch)
{
 int ret;

 cch->opc = CCHOP_DEALLOCATE;
 start_instruction(cch);
 ret = wait_instruction_complete(cch, cchop_deallocate);





 sync_core();
 return ret;
}
