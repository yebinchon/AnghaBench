
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {TYPE_2__* dev; TYPE_1__* tm; } ;
struct TYPE_4__ {scalar_t__ base_addr; } ;
struct TYPE_3__ {int (* timer_stop ) () ;int enable; } ;


 scalar_t__ DMA_INTR_ENA ;
 scalar_t__ likely (int ) ;
 int stub1 () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void stmmac_disable_irq(struct stmmac_priv *priv)
{





 writel(0, priv->dev->base_addr + DMA_INTR_ENA);
}
