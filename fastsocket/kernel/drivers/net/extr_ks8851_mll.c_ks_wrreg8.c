
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ks_net {int cmd_reg_cache; int hw_addr; int hw_addr_cmd; } ;


 int BE0 ;
 int iowrite16 (int,int ) ;

__attribute__((used)) static void ks_wrreg8(struct ks_net *ks, int offset, u8 value)
{
 u8 shift_bit = (offset & 0x03);
 u16 value_write = (u16)(value << ((offset & 1) << 3));
 ks->cmd_reg_cache = (u16)offset | (BE0 << shift_bit);
 iowrite16(ks->cmd_reg_cache, ks->hw_addr_cmd);
 iowrite16(value_write, ks->hw_addr);
}
