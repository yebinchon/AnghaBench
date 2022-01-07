
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opcode; int rs; int rt; } ;
union mips_instruction {TYPE_1__ i_format; } ;


 scalar_t__ sd_op ;
 scalar_t__ sw_op ;

__attribute__((used)) static inline int is_ra_save_ins(union mips_instruction *ip)
{

 return (ip->i_format.opcode == sw_op || ip->i_format.opcode == sd_op) &&
  ip->i_format.rs == 29 &&
  ip->i_format.rt == 31;
}
