
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_instruction {int dummy; } ;


 int CB_IMA (int) ;
 int OP_NOP ;
 int __opdword (int ,int ,int ,int ,int ,int ,int ) ;
 int gru_start_instruction (struct gru_instruction*,int ) ;

__attribute__((used)) static inline void gru_nop(void *cb, int hints)
{
 struct gru_instruction *ins = (void *)cb;

 gru_start_instruction(ins, __opdword(OP_NOP, 0, 0, 0, 0, 0, CB_IMA(hints)));
}
