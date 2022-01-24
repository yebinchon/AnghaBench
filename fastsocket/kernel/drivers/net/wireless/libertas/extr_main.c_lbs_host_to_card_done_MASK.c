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
struct lbs_private {scalar_t__ tx_pending_len; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  cur_cmd; int /*<<< orphan*/  dnld_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNLD_RES_RECEIVED ; 
 int /*<<< orphan*/  LBS_DEB_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct lbs_private *priv)
{
	unsigned long flags;

	FUNC0(LBS_DEB_THREAD);

	FUNC2(&priv->driver_lock, flags);

	priv->dnld_sent = DNLD_RES_RECEIVED;

	/* Wake main thread if commands are pending */
	if (!priv->cur_cmd || priv->tx_pending_len > 0)
		FUNC4(&priv->waitq);

	FUNC3(&priv->driver_lock, flags);
	FUNC1(LBS_DEB_THREAD);
}