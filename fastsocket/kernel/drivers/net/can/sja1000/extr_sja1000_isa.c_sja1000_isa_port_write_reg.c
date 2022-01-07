
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1000_priv {scalar_t__ reg_base; } ;


 int outb (int ,unsigned long) ;

__attribute__((used)) static void sja1000_isa_port_write_reg(const struct sja1000_priv *priv,
           int reg, u8 val)
{
 outb(val, (unsigned long)priv->reg_base + reg);
}
