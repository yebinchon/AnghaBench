#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct at91_priv {TYPE_1__ can; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_IDR ; 
 int /*<<< orphan*/  AT91_IER ; 
 int AT91_IRQ_ALL ; 
 int AT91_IRQ_ERRP ; 
 int AT91_IRQ_ERR_FRAME ; 
 int AT91_IRQ_MB_RX ; 
 int /*<<< orphan*/  AT91_MR ; 
 int AT91_MR_CANEN ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int FUNC0 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct at91_priv*,int /*<<< orphan*/ ,int) ; 
 struct at91_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct at91_priv *priv = FUNC4(dev);
	u32 reg_mr, reg_ier;

	/* disable interrupts */
	FUNC3(priv, AT91_IDR, AT91_IRQ_ALL);

	/* disable chip */
	reg_mr = FUNC0(priv, AT91_MR);
	FUNC3(priv, AT91_MR, reg_mr & ~AT91_MR_CANEN);

	FUNC1(dev);
	FUNC2(priv, 1);

	/* enable chip */
	FUNC3(priv, AT91_MR, AT91_MR_CANEN);

	priv->can.state = CAN_STATE_ERROR_ACTIVE;

	/* Enable interrupts */
	reg_ier = AT91_IRQ_MB_RX | AT91_IRQ_ERRP | AT91_IRQ_ERR_FRAME;
	FUNC3(priv, AT91_IDR, AT91_IRQ_ALL);
	FUNC3(priv, AT91_IER, reg_ier);
}