#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stmmac_priv {TYPE_4__* dev; scalar_t__ cur_tx; scalar_t__ dirty_tx; int /*<<< orphan*/  dma_tx_size; int /*<<< orphan*/  dma_tx; TYPE_2__* mac_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_9__ {TYPE_1__ stats; int /*<<< orphan*/  base_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* init_tx_desc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {TYPE_3__* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct stmmac_priv *priv)
{
	FUNC1(priv->dev);

	FUNC4(priv->dev->base_addr);
	FUNC0(priv);
	priv->mac_type->ops->init_tx_desc(priv->dma_tx, priv->dma_tx_size);
	priv->dirty_tx = 0;
	priv->cur_tx = 0;
	FUNC3(priv->dev->base_addr);

	priv->dev->stats.tx_errors++;
	FUNC2(priv->dev);

	return;
}