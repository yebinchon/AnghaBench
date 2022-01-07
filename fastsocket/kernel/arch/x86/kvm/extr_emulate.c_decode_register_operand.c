
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct operand {int bytes; int val; int orig_val; void* ptr; int type; } ;
struct decode_cache {unsigned int modrm_reg; int rex_prefix; int d; int b; int op_bytes; int regs; } ;


 int ByteOp ;
 int ModRM ;
 int OP_REG ;
 void* decode_register (unsigned int,int ,int) ;

__attribute__((used)) static void decode_register_operand(struct operand *op,
        struct decode_cache *c,
        int inhibit_bytereg)
{
 unsigned reg = c->modrm_reg;
 int highbyte_regs = c->rex_prefix == 0;

 if (!(c->d & ModRM))
  reg = (c->b & 7) | ((c->rex_prefix & 1) << 3);
 op->type = OP_REG;
 if ((c->d & ByteOp) && !inhibit_bytereg) {
  op->ptr = decode_register(reg, c->regs, highbyte_regs);
  op->val = *(u8 *)op->ptr;
  op->bytes = 1;
 } else {
  op->ptr = decode_register(reg, c->regs, 0);
  op->bytes = c->op_bytes;
  switch (op->bytes) {
  case 2:
   op->val = *(u16 *)op->ptr;
   break;
  case 4:
   op->val = *(u32 *)op->ptr;
   break;
  case 8:
   op->val = *(u64 *) op->ptr;
   break;
  }
 }
 op->orig_val = op->val;
}
