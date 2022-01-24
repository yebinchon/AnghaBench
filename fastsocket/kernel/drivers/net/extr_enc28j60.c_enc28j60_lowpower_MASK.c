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
struct enc28j60_net {int /*<<< orphan*/  lock; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECON1 ; 
 int /*<<< orphan*/  ECON1_RXEN ; 
 int /*<<< orphan*/  ECON1_TXRTS ; 
 int /*<<< orphan*/  ECON2 ; 
 int /*<<< orphan*/  ECON2_PWRSV ; 
 int /*<<< orphan*/  ESTAT ; 
 int /*<<< orphan*/  ESTAT_CLKRDY ; 
 int /*<<< orphan*/  ESTAT_RXBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct enc28j60_net *priv, bool is_low)
{
	if (FUNC3(priv))
		FUNC0(&priv->spi->dev, "%s power...\n",
				is_low ? "low" : "high");

	FUNC1(&priv->lock);
	if (is_low) {
		FUNC4(priv, ECON1, ECON1_RXEN);
		FUNC6(priv, ESTAT, ESTAT_RXBUSY, 0);
		FUNC6(priv, ECON1, ECON1_TXRTS, 0);
		/* ECON2_VRPS was set during initialization */
		FUNC5(priv, ECON2, ECON2_PWRSV);
	} else {
		FUNC4(priv, ECON2, ECON2_PWRSV);
		FUNC6(priv, ESTAT, ESTAT_CLKRDY, ESTAT_CLKRDY);
		/* caller sets ECON1_RXEN */
	}
	FUNC2(&priv->lock);
}