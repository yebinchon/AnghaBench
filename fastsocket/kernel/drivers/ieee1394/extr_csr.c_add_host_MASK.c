#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int split_timeout_lo; int bus_manager_id; int bandwidth_available; int channels_available_hi; int broadcast_channel; int max_rec; int max_rom; int generation; int cyc_clk_acc; int lnk_spd; int guid_hi; int guid_lo; TYPE_2__* rom; int /*<<< orphan*/  channels_available_lo; scalar_t__ bus_time; scalar_t__ cycle_time; scalar_t__ split_timeout_hi; scalar_t__ node_ids; scalar_t__ state; int /*<<< orphan*/  lock; } ;
struct hpsb_host {int update_config_rom; TYPE_3__ csr; TYPE_1__* driver; scalar_t__ is_irm; } ;
struct csr1212_keyval {int dummy; } ;
typedef  int /*<<< orphan*/  quadlet_t ;
struct TYPE_5__ {struct csr1212_keyval* root_kv; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hw_csr_reg ) (struct hpsb_host*,int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CSR1212_SUCCESS ; 
 int CSR_BMC_SHIFT ; 
 int CSR_BUS_INFO_SIZE ; 
 int CSR_CMC_SHIFT ; 
 scalar_t__ CSR_CONFIG_ROM ; 
 scalar_t__ CSR_CONFIG_ROM_END ; 
 int CSR_CYC_CLK_ACC_SHIFT ; 
 scalar_t__ CSR_FCP_COMMAND ; 
 scalar_t__ CSR_FCP_END ; 
 int CSR_GENERATION_SHIFT ; 
 int CSR_IRMC_SHIFT ; 
 int CSR_ISC_SHIFT ; 
 int CSR_MAX_REC_SHIFT ; 
 int CSR_MAX_ROM_SHIFT ; 
 int CSR_PMC_SHIFT ; 
 scalar_t__ CSR_REGISTER_BASE ; 
 scalar_t__ CSR_SPEED_MAP ; 
 scalar_t__ CSR_SPEED_MAP_END ; 
 scalar_t__ CSR_TOPOLOGY_MAP ; 
 scalar_t__ CSR_TOPOLOGY_MAP_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IEEE1394_BUSID_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  config_rom_ops ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct csr1212_keyval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  csr_highlevel ; 
 scalar_t__ fcp ; 
 int /*<<< orphan*/  fcp_ops ; 
 scalar_t__ hpsb_disable_irm ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct hpsb_host*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  map_ops ; 
 int /*<<< orphan*/  node_cap ; 
 int /*<<< orphan*/  reg_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hpsb_host*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hpsb_host *host)
{
	struct csr1212_keyval *root;
	quadlet_t bus_info[CSR_BUS_INFO_SIZE];

	FUNC5(&csr_highlevel, host, &reg_ops,
				CSR_REGISTER_BASE,
				CSR_REGISTER_BASE + CSR_CONFIG_ROM);
	FUNC5(&csr_highlevel, host, &config_rom_ops,
				CSR_REGISTER_BASE + CSR_CONFIG_ROM,
				CSR_REGISTER_BASE + CSR_CONFIG_ROM_END);
	if (fcp) {
		FUNC5(&csr_highlevel, host, &fcp_ops,
					CSR_REGISTER_BASE + CSR_FCP_COMMAND,
					CSR_REGISTER_BASE + CSR_FCP_END);
	}
	FUNC5(&csr_highlevel, host, &map_ops,
				CSR_REGISTER_BASE + CSR_TOPOLOGY_MAP,
				CSR_REGISTER_BASE + CSR_TOPOLOGY_MAP_END);
	FUNC5(&csr_highlevel, host, &map_ops,
				CSR_REGISTER_BASE + CSR_SPEED_MAP,
				CSR_REGISTER_BASE + CSR_SPEED_MAP_END);

        FUNC6(&host->csr.lock);

        host->csr.state                 = 0;
        host->csr.node_ids              = 0;
        host->csr.split_timeout_hi      = 0;
        host->csr.split_timeout_lo      = 800 << 19;
	FUNC1(&host->csr);
        host->csr.cycle_time            = 0;
        host->csr.bus_time              = 0;
        host->csr.bus_manager_id        = 0x3f;
        host->csr.bandwidth_available   = 4915;
	host->csr.channels_available_hi = 0xfffffffe;	/* pre-alloc ch 31 per 1394a-2000 */
        host->csr.channels_available_lo = ~0;
	host->csr.broadcast_channel = 0x80000000 | 31;

	if (host->is_irm) {
		if (host->driver->hw_csr_reg) {
			host->driver->hw_csr_reg(host, 2, 0xfffffffe, ~0);
		}
	}

	if (host->csr.max_rec >= 9)
		host->csr.max_rom = 2;
	else if (host->csr.max_rec >= 5)
		host->csr.max_rom = 1;
	else
		host->csr.max_rom = 0;

	host->csr.generation = 2;

	bus_info[1] = IEEE1394_BUSID_MAGIC;
	bus_info[2] = FUNC2((hpsb_disable_irm ? 0 : 1 << CSR_IRMC_SHIFT) |
				  (1 << CSR_CMC_SHIFT) |
				  (1 << CSR_ISC_SHIFT) |
				  (0 << CSR_BMC_SHIFT) |
				  (0 << CSR_PMC_SHIFT) |
				  (host->csr.cyc_clk_acc << CSR_CYC_CLK_ACC_SHIFT) |
				  (host->csr.max_rec << CSR_MAX_REC_SHIFT) |
				  (host->csr.max_rom << CSR_MAX_ROM_SHIFT) |
				  (host->csr.generation << CSR_GENERATION_SHIFT) |
				  host->csr.lnk_spd);

	bus_info[3] = FUNC2(host->csr.guid_hi);
	bus_info[4] = FUNC2(host->csr.guid_lo);

	/* The hardware copy of the bus info block will be set later when a
	 * bus reset is issued. */

	FUNC4(host->csr.rom, bus_info, host->csr.max_rom);

	root = host->csr.rom->root_kv;

	if(FUNC3(root, node_cap) != CSR1212_SUCCESS) {
		FUNC0("Failed to attach Node Capabilities to root directory");
	}

	host->update_config_rom = 1;
}