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
struct ath9k_htc_priv {int /*<<< orphan*/  op_flags; int /*<<< orphan*/  ani_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ANI_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct ath9k_htc_priv *priv)
{
	FUNC0(&priv->ani_work);
	FUNC1(OP_ANI_RUNNING, &priv->op_flags);
}