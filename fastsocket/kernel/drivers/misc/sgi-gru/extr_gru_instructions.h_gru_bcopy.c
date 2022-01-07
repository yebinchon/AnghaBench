
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {long baddr0; long op2_value_baddr1; unsigned long nelem; unsigned int tri1_bufsize; } ;


 int CB_IMA (unsigned long) ;
 int IAA_RAM ;
 int OP_BCOPY ;
 int __opdword (int ,int ,unsigned int,int ,int ,unsigned int,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_bcopy(void *cb, const unsigned long src,
  unsigned long dest,
  unsigned int tri0, unsigned int xtype, unsigned long nelem,
  unsigned int bufsize, unsigned long hints)
{
 struct gru_instruction *ins = (void *)cb;

 ins->baddr0 = (long)src;
 ins->op2_value_baddr1 = (long)dest;
 ins->nelem = nelem;
 ins->tri1_bufsize = bufsize;
 gru_start_instruction(ins, __opdword(OP_BCOPY, 0, xtype, IAA_RAM,
     IAA_RAM, tri0, CB_IMA(hints)));
}
