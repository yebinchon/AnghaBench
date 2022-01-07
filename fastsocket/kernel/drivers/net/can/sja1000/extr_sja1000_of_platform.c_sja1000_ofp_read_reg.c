
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1000_priv {scalar_t__ reg_base; } ;


 int in_8 (scalar_t__) ;

__attribute__((used)) static u8 sja1000_ofp_read_reg(const struct sja1000_priv *priv, int reg)
{
 return in_8(priv->reg_base + reg);
}
