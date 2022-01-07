
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct ipw_priv* u32 ;
struct ipw_priv {int dummy; } ;


 int IPW_DEBUG_IO (char*,struct ipw_priv*,struct ipw_priv*) ;
 int IPW_INDIRECT_ADDR ;
 int IPW_INDIRECT_DATA ;
 struct ipw_priv* _ipw_read32 (struct ipw_priv*,int ) ;
 int _ipw_write32 (struct ipw_priv*,int ,struct ipw_priv*) ;

__attribute__((used)) static u32 _ipw_read_reg32(struct ipw_priv *priv, u32 reg)
{
 u32 value;

 IPW_DEBUG_IO("%p : reg = 0x%08x\n", priv, reg);

 _ipw_write32(priv, IPW_INDIRECT_ADDR, reg);
 value = _ipw_read32(priv, IPW_INDIRECT_DATA);
 IPW_DEBUG_IO(" reg = 0x%4X : value = 0x%4x\n", reg, value);
 return value;
}
