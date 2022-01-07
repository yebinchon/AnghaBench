
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int in_le32 (scalar_t__) ;
 scalar_t__* mac_regs ;

unsigned int pasemi_read_mac_reg(int intf, unsigned int reg)
{
 return in_le32(mac_regs[intf]+reg);
}
