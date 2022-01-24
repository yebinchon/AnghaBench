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
struct ath9k_htc_priv {TYPE_1__* ah; } ;
struct TYPE_2__ {scalar_t__ rfkill_polarity; int /*<<< orphan*/  rfkill_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ath9k_htc_priv *priv)
{
	bool is_blocked;

	FUNC1(priv);
	is_blocked = FUNC2(priv->ah, priv->ah->rfkill_gpio) ==
						 priv->ah->rfkill_polarity;
	FUNC0(priv);

	return is_blocked;
}