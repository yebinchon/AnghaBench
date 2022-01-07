
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {TYPE_2__* dev; TYPE_1__* tm; } ;
struct TYPE_4__ {scalar_t__ base_addr; } ;
struct TYPE_3__ {int (* timer_start ) (int ) ;int enable; } ;


 int DMA_INTR_DEFAULT_MASK ;
 scalar_t__ DMA_INTR_ENA ;
 scalar_t__ likely (int ) ;
 int stub1 (int ) ;
 int tmrate ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void stmmac_enable_irq(struct stmmac_priv *priv)
{





 writel(DMA_INTR_DEFAULT_MASK, priv->dev->base_addr + DMA_INTR_ENA);
}
