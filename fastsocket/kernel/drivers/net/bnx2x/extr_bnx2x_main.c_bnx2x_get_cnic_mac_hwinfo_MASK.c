#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/ * iscsi_mac; } ;
struct bnx2x {int flags; int mf_ext_config; int /*<<< orphan*/ * fip_mac; TYPE_2__* dev; TYPE_1__ cnic_eth_dev; } ;
struct TYPE_10__ {TYPE_3__* port_hw_config; } ;
struct TYPE_9__ {int /*<<< orphan*/  fcoe_mac_addr_lower; int /*<<< orphan*/  fcoe_mac_addr_upper; int /*<<< orphan*/  iscsi_mac_addr_lower; int /*<<< orphan*/  iscsi_mac_addr_upper; int /*<<< orphan*/  func_cfg; } ;
struct TYPE_8__ {int /*<<< orphan*/  fcoe_fip_mac_lower; int /*<<< orphan*/  fcoe_fip_mac_upper; int /*<<< orphan*/  iscsi_mac_lower; int /*<<< orphan*/  iscsi_mac_upper; } ;
struct TYPE_7__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int FUNC3 (struct bnx2x*) ; 
 int FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD ; 
 int MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD ; 
 int FUNC9 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int NO_FCOE_FLAG ; 
 int NO_ISCSI_FLAG ; 
 int NO_ISCSI_OOO_FLAG ; 
 int FUNC10 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_5__ dev_info ; 
 TYPE_4__* func_ext_config ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct bnx2x *bp)
{
	u32 val, val2;
	int func = FUNC3(bp);
	int port = FUNC4(bp);
	u8 *iscsi_mac = bp->cnic_eth_dev.iscsi_mac;
	u8 *fip_mac = bp->fip_mac;

	if (FUNC6(bp)) {
		/* iSCSI and FCoE NPAR MACs: if there is no either iSCSI or
		 * FCoE MAC then the appropriate feature should be disabled.
		 * In non SD mode features configuration comes from struct
		 * func_ext_config.
		 */
		if (!FUNC8(bp) && !FUNC5(bp)) {
			u32 cfg = FUNC9(bp, func_ext_config[func].func_cfg);
			if (cfg & MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD) {
				val2 = FUNC9(bp, func_ext_config[func].
						 iscsi_mac_addr_upper);
				val = FUNC9(bp, func_ext_config[func].
						iscsi_mac_addr_lower);
				FUNC11(iscsi_mac, val, val2);
				FUNC0
					("Read iSCSI MAC: %pM\n", iscsi_mac);
			} else {
				bp->flags |= NO_ISCSI_OOO_FLAG | NO_ISCSI_FLAG;
			}

			if (cfg & MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD) {
				val2 = FUNC9(bp, func_ext_config[func].
						 fcoe_mac_addr_upper);
				val = FUNC9(bp, func_ext_config[func].
						fcoe_mac_addr_lower);
				FUNC11(fip_mac, val, val2);
				FUNC0
					("Read FCoE L2 MAC: %pM\n", fip_mac);
			} else {
				bp->flags |= NO_FCOE_FLAG;
			}

			bp->mf_ext_config = cfg;

		} else { /* SD MODE */
			if (FUNC2(bp)) {
				/* use primary mac as iscsi mac */
				FUNC13(iscsi_mac, bp->dev->dev_addr, ETH_ALEN);

				FUNC0("SD ISCSI MODE\n");
				FUNC0
					("Read iSCSI MAC: %pM\n", iscsi_mac);
			} else if (FUNC1(bp)) {
				/* use primary mac as fip mac */
				FUNC13(fip_mac, bp->dev->dev_addr, ETH_ALEN);
				FUNC0("SD FCoE MODE\n");
				FUNC0
					("Read FIP MAC: %pM\n", fip_mac);
			}
		}

		/* If this is a storage-only interface, use SAN mac as
		 * primary MAC. Notice that for SD this is already the case,
		 * as the SAN mac was copied from the primary MAC.
		 */
		if (FUNC7(bp))
			FUNC13(bp->dev->dev_addr, fip_mac, ETH_ALEN);
	} else {
		val2 = FUNC10(bp, dev_info.port_hw_config[port].
				iscsi_mac_upper);
		val = FUNC10(bp, dev_info.port_hw_config[port].
			       iscsi_mac_lower);
		FUNC11(iscsi_mac, val, val2);

		val2 = FUNC10(bp, dev_info.port_hw_config[port].
				fcoe_fip_mac_upper);
		val = FUNC10(bp, dev_info.port_hw_config[port].
			       fcoe_fip_mac_lower);
		FUNC11(fip_mac, val, val2);
	}

	/* Disable iSCSI OOO if MAC configuration is invalid. */
	if (!FUNC12(iscsi_mac)) {
		bp->flags |= NO_ISCSI_OOO_FLAG | NO_ISCSI_FLAG;
		FUNC14(iscsi_mac, 0, ETH_ALEN);
	}

	/* Disable FCoE if MAC configuration is invalid. */
	if (!FUNC12(fip_mac)) {
		bp->flags |= NO_FCOE_FLAG;
		FUNC14(bp->fip_mac, 0, ETH_ALEN);
	}
}