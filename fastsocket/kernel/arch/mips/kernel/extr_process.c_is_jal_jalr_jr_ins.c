
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opcode; scalar_t__ func; } ;
struct TYPE_3__ {scalar_t__ opcode; } ;
union mips_instruction {TYPE_2__ r_format; TYPE_1__ j_format; } ;


 scalar_t__ jal_op ;
 scalar_t__ jalr_op ;
 scalar_t__ jr_op ;
 scalar_t__ spec_op ;

__attribute__((used)) static inline int is_jal_jalr_jr_ins(union mips_instruction *ip)
{
 if (ip->j_format.opcode == jal_op)
  return 1;
 if (ip->r_format.opcode != spec_op)
  return 0;
 return ip->r_format.func == jalr_op || ip->r_format.func == jr_op;
}
