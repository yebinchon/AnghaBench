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
struct wl1271 {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  always ; 
 int /*<<< orphan*/  beacon_filtering ; 
 int /*<<< orphan*/  beacon_interval ; 
 struct dentry* FUNC4 (char*,struct dentry*) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  driver_state ; 
 int /*<<< orphan*/  dtim_interval ; 
 int /*<<< orphan*/  dynamic_ps_timeout ; 
 int /*<<< orphan*/  excessive_retries ; 
 int /*<<< orphan*/  forced_ps ; 
 int /*<<< orphan*/  fw_stats_raw ; 
 int /*<<< orphan*/  gpio_power ; 
 int /*<<< orphan*/  interval ; 
 int /*<<< orphan*/  irq_blk_threshold ; 
 int /*<<< orphan*/  irq_pkt_threshold ; 
 int /*<<< orphan*/  irq_timeout ; 
 int /*<<< orphan*/  mem ; 
 int /*<<< orphan*/  retry_count ; 
 int /*<<< orphan*/  rx_streaming ; 
 int /*<<< orphan*/  sleep_auth ; 
 int /*<<< orphan*/  split_scan_timeout ; 
 int /*<<< orphan*/  start_recovery ; 
 int /*<<< orphan*/  suspend_dtim_interval ; 
 int /*<<< orphan*/  tx_queue_len ; 
 int /*<<< orphan*/  vifs_state ; 

__attribute__((used)) static int FUNC5(struct wl1271 *wl,
				    struct dentry *rootdir)
{
	int ret = 0;
	struct dentry *entry, *streaming;

	FUNC0(tx_queue_len, rootdir);
	FUNC0(retry_count, rootdir);
	FUNC0(excessive_retries, rootdir);

	FUNC0(gpio_power, rootdir);
	FUNC0(start_recovery, rootdir);
	FUNC0(driver_state, rootdir);
	FUNC0(vifs_state, rootdir);
	FUNC0(dtim_interval, rootdir);
	FUNC0(suspend_dtim_interval, rootdir);
	FUNC0(beacon_interval, rootdir);
	FUNC0(beacon_filtering, rootdir);
	FUNC0(dynamic_ps_timeout, rootdir);
	FUNC0(forced_ps, rootdir);
	FUNC0(split_scan_timeout, rootdir);
	FUNC0(irq_pkt_threshold, rootdir);
	FUNC0(irq_blk_threshold, rootdir);
	FUNC0(irq_timeout, rootdir);
	FUNC0(fw_stats_raw, rootdir);
	FUNC0(sleep_auth, rootdir);

	streaming = FUNC4("rx_streaming", rootdir);
	if (!streaming || FUNC2(streaming))
		goto err;

	FUNC1(rx_streaming, interval, streaming);
	FUNC1(rx_streaming, always, streaming);

	FUNC1(dev, mem, rootdir);

	return 0;

err:
	if (FUNC2(entry))
		ret = FUNC3(entry);
	else
		ret = -ENOMEM;

	return ret;
}