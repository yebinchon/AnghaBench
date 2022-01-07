
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int in_le32 (scalar_t__) ;
 scalar_t__ iob_regs ;

unsigned int pasemi_read_iob_reg(unsigned int reg)
{
 return in_le32(iob_regs+reg);
}
