
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {long baddr0; unsigned long nelem; unsigned long op1_stride; } ;


 int CB_IMA (unsigned long) ;
 int IAA_RAM ;
 int OP_VSTORE ;
 int __opdword (int ,int ,unsigned char,int ,int ,unsigned int,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_vstore(void *cb, unsigned long mem_addr,
  unsigned int tri0, unsigned char xtype, unsigned long nelem,
  unsigned long stride, unsigned long hints)
{
 struct gru_instruction *ins = (void *)cb;

 ins->baddr0 = (long)mem_addr;
 ins->nelem = nelem;
 ins->op1_stride = stride;
 gru_start_instruction(ins, __opdword(OP_VSTORE, 0, xtype, IAA_RAM, 0,
     tri0, CB_IMA(hints)));
}
