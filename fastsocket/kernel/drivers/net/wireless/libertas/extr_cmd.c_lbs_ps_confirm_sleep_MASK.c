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
struct lbs_private {size_t resp_idx; int /*<<< orphan*/  driver_lock; scalar_t__* resp_len; int /*<<< orphan*/  event_fifo; scalar_t__ cur_cmd; scalar_t__ dnld_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_HOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct lbs_private *priv)
{
	unsigned long flags =0;
	int allowed = 1;

	FUNC1(LBS_DEB_HOST);

	FUNC5(&priv->driver_lock, flags);
	if (priv->dnld_sent) {
		allowed = 0;
		FUNC2("dnld_sent was set\n");
	}

	/* In-progress command? */
	if (priv->cur_cmd) {
		allowed = 0;
		FUNC2("cur_cmd was set\n");
	}

	/* Pending events or command responses? */
	if (FUNC0(priv->event_fifo) || priv->resp_len[priv->resp_idx]) {
		allowed = 0;
		FUNC2("pending events or command responses\n");
	}
	FUNC6(&priv->driver_lock, flags);

	if (allowed) {
		FUNC2("sending lbs_ps_confirm_sleep\n");
		FUNC4(priv);
	} else {
		FUNC2("sleep confirm has been delayed\n");
	}

	FUNC3(LBS_DEB_HOST);
}