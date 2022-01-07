
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeti_ts_priv {scalar_t__ irq_active_high; int irq; } ;


 scalar_t__ gpio_get_value (int ) ;
 int irq_to_gpio (int ) ;

__attribute__((used)) static inline int eeti_ts_irq_active(struct eeti_ts_priv *priv)
{
 return gpio_get_value(irq_to_gpio(priv->irq)) == priv->irq_active_high;
}
