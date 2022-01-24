#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_compl_threshold; int /*<<< orphan*/  tx_compl_timeout; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_tx_config_options {void* tx_compl_threshold; void* tx_compl_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_TX_CONFIG_OPT ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_tx_config_options*) ; 
 struct acx_tx_config_options* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_tx_config_options*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct acx_tx_config_options *acx;
	int ret = 0;

	FUNC4(DEBUG_ACX, "acx tx config options");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);

	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->tx_compl_timeout = FUNC0(wl->conf.tx.tx_compl_timeout);
	acx->tx_compl_threshold = FUNC0(wl->conf.tx.tx_compl_threshold);
	ret = FUNC3(wl, ACX_TX_CONFIG_OPT, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("Setting of tx options failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}