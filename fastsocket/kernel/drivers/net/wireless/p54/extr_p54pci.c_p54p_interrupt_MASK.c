#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct p54p_priv {int /*<<< orphan*/  boot_comp; int /*<<< orphan*/  tasklet; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int ISL38XX_INT_IDENT_INIT ; 
 int ISL38XX_INT_IDENT_UPDATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  int_ack ; 
 int /*<<< orphan*/  int_enable ; 
 int /*<<< orphan*/  int_ident ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct ieee80211_hw *dev = dev_id;
	struct p54p_priv *priv = dev->priv;
	__le32 reg;

	reg = FUNC0(int_ident);
	if (FUNC5(reg == FUNC3(0xFFFFFFFF))) {
		goto out;
	}
	FUNC1(int_ack, reg);

	reg &= FUNC0(int_enable);

	if (reg & FUNC3(ISL38XX_INT_IDENT_UPDATE))
		FUNC4(&priv->tasklet);
	else if (reg & FUNC3(ISL38XX_INT_IDENT_INIT))
		FUNC2(&priv->boot_comp);

out:
	return reg ? IRQ_HANDLED : IRQ_NONE;
}