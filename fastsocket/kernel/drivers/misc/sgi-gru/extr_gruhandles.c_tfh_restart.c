
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_fault_handle {int opc; } ;


 int TFHOP_RESTART ;
 int start_instruction (struct gru_tlb_fault_handle*) ;

void tfh_restart(struct gru_tlb_fault_handle *tfh)
{
 tfh->opc = TFHOP_RESTART;
 start_instruction(tfh);
}
