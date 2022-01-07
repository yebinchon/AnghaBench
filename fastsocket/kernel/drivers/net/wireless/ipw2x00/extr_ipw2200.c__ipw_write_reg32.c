
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;


 int IPW_DEBUG_IO (char*,struct ipw_priv*,int ,int ) ;
 int IPW_INDIRECT_ADDR ;
 int IPW_INDIRECT_DATA ;
 int _ipw_write32 (struct ipw_priv*,int ,int ) ;

__attribute__((used)) static void _ipw_write_reg32(struct ipw_priv *priv, u32 reg, u32 value)
{
 IPW_DEBUG_IO(" %p : reg = 0x%8X : value = 0x%8X\n", priv, reg, value);
 _ipw_write32(priv, IPW_INDIRECT_ADDR, reg);
 _ipw_write32(priv, IPW_INDIRECT_DATA, value);
}
