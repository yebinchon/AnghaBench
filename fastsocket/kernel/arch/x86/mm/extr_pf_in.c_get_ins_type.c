
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prefix_bits {int dummy; } ;
typedef enum reason_type { ____Placeholder_reason_type } reason_type ;


 int CHECK_OP_TYPE (unsigned int,int ,int ) ;
 int IMM_WRITE ;
 int OTHERS ;
 int REG_READ ;
 int REG_WRITE ;
 int get_opcode (unsigned char*,unsigned int*) ;
 int imm_wop ;
 int reg_rop ;
 int reg_wop ;
 int skip_prefix (unsigned char*,struct prefix_bits*) ;

enum reason_type get_ins_type(unsigned long ins_addr)
{
 unsigned int opcode;
 unsigned char *p;
 struct prefix_bits prf;
 int i;
 enum reason_type rv = OTHERS;

 p = (unsigned char *)ins_addr;
 p += skip_prefix(p, &prf);
 p += get_opcode(p, &opcode);

 CHECK_OP_TYPE(opcode, reg_rop, REG_READ);
 CHECK_OP_TYPE(opcode, reg_wop, REG_WRITE);
 CHECK_OP_TYPE(opcode, imm_wop, IMM_WRITE);

exit:
 return rv;
}
