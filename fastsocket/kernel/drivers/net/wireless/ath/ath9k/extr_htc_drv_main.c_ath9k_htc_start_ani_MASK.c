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
struct TYPE_2__ {unsigned long longcal_timer; unsigned long shortcal_timer; unsigned long checkani_timer; } ;
struct ath_common {int /*<<< orphan*/  hw; TYPE_1__ ani; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ani_work; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_ANI_POLLINTERVAL ; 
 int /*<<< orphan*/  OP_ANI_RUNNING ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct ath9k_htc_priv *priv)
{
	struct ath_common *common = FUNC0(priv->ah);
	unsigned long timestamp = FUNC2(jiffies);

	common->ani.longcal_timer = timestamp;
	common->ani.shortcal_timer = timestamp;
	common->ani.checkani_timer = timestamp;

	FUNC4(OP_ANI_RUNNING, &priv->op_flags);

	FUNC1(common->hw, &priv->ani_work,
				     FUNC3(ATH_ANI_POLLINTERVAL));
}