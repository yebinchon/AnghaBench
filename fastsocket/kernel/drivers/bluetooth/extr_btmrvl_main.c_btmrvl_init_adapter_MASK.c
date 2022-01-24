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
struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_wait_q; int /*<<< orphan*/  ps_state; int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct btmrvl_private *priv)
{
	FUNC1(&priv->adapter->tx_queue);

	priv->adapter->ps_state = PS_AWAKE;

	FUNC0(&priv->adapter->cmd_wait_q);
}