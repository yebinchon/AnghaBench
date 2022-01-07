
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;


 int ipw_read32 (struct ipw_priv*,int) ;
 int ipw_write32 (struct ipw_priv*,int,int) ;

__attribute__((used)) static inline void ipw_clear_bit(struct ipw_priv *priv, u32 reg, u32 mask)
{
 ipw_write32(priv, reg, ipw_read32(priv, reg) & ~mask);
}
