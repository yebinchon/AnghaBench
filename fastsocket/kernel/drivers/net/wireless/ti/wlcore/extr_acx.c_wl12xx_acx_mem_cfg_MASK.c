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
struct wl12xx_acx_config_memory {int /*<<< orphan*/  fwlog_blocks; int /*<<< orphan*/  tx_min; int /*<<< orphan*/  rx_free_req; int /*<<< orphan*/  tx_free_req; int /*<<< orphan*/  dyn_mem_enable; int /*<<< orphan*/  total_tx_descriptors; int /*<<< orphan*/  num_ssid_profiles; int /*<<< orphan*/  tx_min_mem_block_num; int /*<<< orphan*/  rx_mem_block_num; int /*<<< orphan*/  num_stations; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem_blocks; } ;
struct conf_memory_settings {int /*<<< orphan*/  tx_min; int /*<<< orphan*/  min_req_rx_blocks; int /*<<< orphan*/  min_req_tx_blocks; int /*<<< orphan*/  dynamic_memory; int /*<<< orphan*/  ssid_profiles; int /*<<< orphan*/  tx_min_block_num; int /*<<< orphan*/  rx_block_num; int /*<<< orphan*/  num_stations; } ;
struct TYPE_4__ {TYPE_1__ fwlog; struct conf_memory_settings mem; } ;
struct wl1271 {TYPE_2__ conf; int /*<<< orphan*/  num_tx_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_MEM_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl12xx_acx_config_memory*) ; 
 struct wl12xx_acx_config_memory* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_acx_config_memory*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct wl12xx_acx_config_memory *mem_conf;
	struct conf_memory_settings *mem;
	int ret;

	FUNC4(DEBUG_ACX, "wl1271 mem cfg");

	mem_conf = FUNC2(sizeof(*mem_conf), GFP_KERNEL);
	if (!mem_conf) {
		ret = -ENOMEM;
		goto out;
	}

	mem = &wl->conf.mem;

	/* memory config */
	mem_conf->num_stations = mem->num_stations;
	mem_conf->rx_mem_block_num = mem->rx_block_num;
	mem_conf->tx_min_mem_block_num = mem->tx_min_block_num;
	mem_conf->num_ssid_profiles = mem->ssid_profiles;
	mem_conf->total_tx_descriptors = FUNC0(wl->num_tx_desc);
	mem_conf->dyn_mem_enable = mem->dynamic_memory;
	mem_conf->tx_free_req = mem->min_req_tx_blocks;
	mem_conf->rx_free_req = mem->min_req_rx_blocks;
	mem_conf->tx_min = mem->tx_min;
	mem_conf->fwlog_blocks = wl->conf.fwlog.mem_blocks;

	ret = FUNC3(wl, ACX_MEM_CFG, mem_conf,
				   sizeof(*mem_conf));
	if (ret < 0) {
		FUNC5("wl1271 mem config failed: %d", ret);
		goto out;
	}

out:
	FUNC1(mem_conf);
	return ret;
}