
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int net_dev; } ;


 int IPW_BIT_GPIO_GPIO1_ENABLE ;
 int IPW_BIT_GPIO_GPIO3_MASK ;
 int IPW_BIT_GPIO_LED_OFF ;
 int IPW_REG_GPIO ;
 int write_register (int ,int ,int) ;

__attribute__((used)) static inline void ipw2100_hw_set_gpio(struct ipw2100_priv *priv)
{
 u32 reg = 0;




 reg = (IPW_BIT_GPIO_GPIO3_MASK | IPW_BIT_GPIO_GPIO1_ENABLE |
        IPW_BIT_GPIO_LED_OFF);
 write_register(priv->net_dev, IPW_REG_GPIO, reg);
}
