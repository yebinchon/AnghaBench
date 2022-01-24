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
typedef  int u16 ;
struct TYPE_2__ {int broadcast_channel; } ;
struct hpsb_host {scalar_t__ irm_id; int busmgr_id; int node_count; int resume_packet_sent; int /*<<< orphan*/  node_id; scalar_t__ is_cycmst; TYPE_1__ csr; int /*<<< orphan*/  is_irm; } ;
typedef  int /*<<< orphan*/  quadlet_t ;
typedef  scalar_t__ nodeid_t ;

/* Variables and functions */
 int CSR_CMC_SHIFT ; 
 scalar_t__ CSR_CONFIG_ROM ; 
 scalar_t__ CSR_REGISTER_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LOCAL_BUS ; 
 int /*<<< orphan*/  LONG_RESET_FORCE_ROOT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_host*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hpsb_host*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hpsb_host*) ; 

__attribute__((used)) static int FUNC8(struct hpsb_host *host, int cycles)
{
	quadlet_t bc;

	/* if irm_id == -1 then there is no IRM on this bus */
	if (!host->is_irm || host->irm_id == (nodeid_t)-1)
		return 1;

	/* We are a 1394a-2000 compliant IRM. Set the validity bit. */
	host->csr.broadcast_channel |= 0x40000000;

	/* If there is no bus manager then we should set the root node's
	 * force_root bit to promote bus stability per the 1394
	 * spec. (8.4.2.6) */
	if (host->busmgr_id == 0xffff && host->node_count > 1)
	{
		u16 root_node = host->node_count - 1;

		/* get cycle master capability flag from root node */
		if (host->is_cycmst ||
		    (!FUNC4(host, LOCAL_BUS | root_node, FUNC3(host),
				(CSR_REGISTER_BASE + CSR_CONFIG_ROM + 2 * sizeof(quadlet_t)),
				&bc, sizeof(quadlet_t)) &&
		     FUNC2(bc) & 1 << CSR_CMC_SHIFT))
			FUNC6(host, root_node, -1);
		else {
			FUNC0("The root node is not cycle master capable; "
				   "selecting a new root node and resetting...");

			if (cycles >= 5) {
				/* Oh screw it! Just leave the bus as it is */
				FUNC0("Stopping reset loop for IRM sanity");
				return 1;
			}

			FUNC6(host, FUNC1(host->node_id), -1);
			FUNC5(host, LONG_RESET_FORCE_ROOT);

			return 0;
		}
	}

	/* Some devices suspend their ports while being connected to an inactive
	 * host adapter, i.e. if connected before the low-level driver is
	 * loaded.  They become visible either when physically unplugged and
	 * replugged, or when receiving a resume packet.  Send one once. */
	if (!host->resume_packet_sent && !FUNC7(host))
		host->resume_packet_sent = 1;

	return 1;
}