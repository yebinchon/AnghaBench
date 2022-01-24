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
struct TYPE_2__ {int /*<<< orphan*/  last_rssi; } ;
struct ath9k_htc_priv {TYPE_1__ rx; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_RSSI_DUMMY_MARKER ; 
 int /*<<< orphan*/  OP_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ath9k_htc_priv *priv)
{
	FUNC1(priv->ah);
	FUNC0(priv);
	FUNC2(priv->ah, FUNC3(OP_SCANNING, &priv->op_flags));
	priv->rx.last_rssi = ATH_RSSI_DUMMY_MARKER;
}