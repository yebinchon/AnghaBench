
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {long baddr0; unsigned long op1_stride; unsigned long nelem; } ;


 int CB_IMA (unsigned long) ;
 int IAA_RAM ;
 int OP_VFLUSH ;
 int __opdword (int ,int ,unsigned char,int ,int ,int ,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_vflush(void *cb, unsigned long mem_addr,
  unsigned long nelem, unsigned char xtype, unsigned long stride,
  unsigned long hints)
{
 struct gru_instruction *ins = (void *)cb;

 ins->baddr0 = (long)mem_addr;
 ins->op1_stride = stride;
 ins->nelem = nelem;
 gru_start_instruction(ins, __opdword(OP_VFLUSH, 0, xtype, IAA_RAM, 0,
     0, CB_IMA(hints)));
}
