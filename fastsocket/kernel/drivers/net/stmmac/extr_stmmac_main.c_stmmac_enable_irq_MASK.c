#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stmmac_priv {TYPE_2__* dev; TYPE_1__* tm; } ;
struct TYPE_4__ {scalar_t__ base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* timer_start ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_INTR_DEFAULT_MASK ; 
 scalar_t__ DMA_INTR_ENA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tmrate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct stmmac_priv *priv)
{
#ifdef CONFIG_STMMAC_TIMER
	if (likely(priv->tm->enable))
		priv->tm->timer_start(tmrate);
	else
#endif
	FUNC2(DMA_INTR_DEFAULT_MASK, priv->dev->base_addr + DMA_INTR_ENA);
}