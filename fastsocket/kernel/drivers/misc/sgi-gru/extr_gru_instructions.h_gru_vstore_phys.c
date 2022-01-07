
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {long baddr0; int nelem; int op1_stride; } ;


 int CB_IMA (unsigned long) ;
 int OP_VSTORE ;
 int XTYPE_DW ;
 int __opdword (int ,int ,int ,int,int ,unsigned long,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_vstore_phys(void *cb, unsigned long gpa,
  unsigned int tri0, int iaa, unsigned long hints)
{
 struct gru_instruction *ins = (struct gru_instruction *)cb;

 ins->baddr0 = (long)gpa | ((unsigned long)iaa << 62);
 ins->nelem = 1;
 ins->op1_stride = 1;
 gru_start_instruction(ins, __opdword(OP_VSTORE, 0, XTYPE_DW, iaa, 0,
     (unsigned long)tri0, CB_IMA(hints)));
}
