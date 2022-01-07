
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* mac_regs ;
 int out_le32 (scalar_t__,unsigned int) ;

void pasemi_write_mac_reg(int intf, unsigned int reg, unsigned int val)
{
 out_le32(mac_regs[intf]+reg, val);
}
