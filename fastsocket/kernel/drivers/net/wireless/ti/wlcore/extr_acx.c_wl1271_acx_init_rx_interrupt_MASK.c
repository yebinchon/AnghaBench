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
struct wl1271_acx_rx_config_opt {int /*<<< orphan*/  queue_type; void* mblk_threshold; void* timeout; void* threshold; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue_type; int /*<<< orphan*/  irq_blk_threshold; int /*<<< orphan*/  irq_timeout; int /*<<< orphan*/  irq_pkt_threshold; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct wl1271 {TYPE_2__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_RX_CONFIG_OPT ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_acx_rx_config_opt*) ; 
 struct wl1271_acx_rx_config_opt* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_rx_config_opt*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct wl1271_acx_rx_config_opt *rx_conf;
	int ret;

	FUNC4(DEBUG_ACX, "wl1271 rx interrupt config");

	rx_conf = FUNC2(sizeof(*rx_conf), GFP_KERNEL);
	if (!rx_conf) {
		ret = -ENOMEM;
		goto out;
	}

	rx_conf->threshold = FUNC0(wl->conf.rx.irq_pkt_threshold);
	rx_conf->timeout = FUNC0(wl->conf.rx.irq_timeout);
	rx_conf->mblk_threshold = FUNC0(wl->conf.rx.irq_blk_threshold);
	rx_conf->queue_type = wl->conf.rx.queue_type;

	ret = FUNC3(wl, ACX_RX_CONFIG_OPT, rx_conf,
				   sizeof(*rx_conf));
	if (ret < 0) {
		FUNC5("wl1271 rx config opt failed: %d", ret);
		goto out;
	}

out:
	FUNC1(rx_conf);
	return ret;
}