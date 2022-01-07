
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int cmd_reg_cache; int hw_addr; int hw_addr_cmd; } ;


 int BE0 ;
 int BE1 ;
 int ioread16 (int ) ;
 int iowrite16 (int,int ) ;

__attribute__((used)) static u16 ks_rdreg16(struct ks_net *ks, int offset)
{
 ks->cmd_reg_cache = (u16)offset | ((BE1 | BE0) << (offset & 0x02));
 iowrite16(ks->cmd_reg_cache, ks->hw_addr_cmd);
 return ioread16(ks->hw_addr);
}
