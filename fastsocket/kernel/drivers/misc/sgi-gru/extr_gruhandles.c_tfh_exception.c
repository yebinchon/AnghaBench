
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_fault_handle {int opc; } ;


 int TFHOP_EXCEPTION ;
 int start_instruction (struct gru_tlb_fault_handle*) ;

void tfh_exception(struct gru_tlb_fault_handle *tfh)
{
 tfh->opc = TFHOP_EXCEPTION;
 start_instruction(tfh);
}
