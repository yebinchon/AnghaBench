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
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_fcoe_conn; } ;
struct TYPE_5__ {int /*<<< orphan*/  func_cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int E2_FUNC_MAX ; 
 int FUNC_MF_CFG_FUNC_HIDE ; 
 int FUNC_MF_CFG_PROTOCOL_FCOE ; 
 int FUNC_MF_CFG_PROTOCOL_MASK ; 
 int FW_ENCODE_32BIT_PATTERN ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int MACP_FUNC_CFG_FLAGS_ENABLED ; 
 int MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 TYPE_3__* drv_lic_key ; 
 TYPE_2__* func_ext_config ; 
 TYPE_1__* func_mf_config ; 

__attribute__((used)) static int FUNC6(struct bnx2x *bp)
{
	u8 count = 0;

	if (FUNC2(bp)) {
		u8 fid;

		/* iterate over absolute function ids for this path: */
		for (fid = FUNC0(bp); fid < E2_FUNC_MAX * 2; fid += 2) {
			if (FUNC3(bp)) {
				u32 cfg = FUNC4(bp,
						    func_mf_config[fid].config);

				if (!(cfg & FUNC_MF_CFG_FUNC_HIDE) &&
				    ((cfg & FUNC_MF_CFG_PROTOCOL_MASK) ==
					    FUNC_MF_CFG_PROTOCOL_FCOE))
					count++;
			} else {
				u32 cfg = FUNC4(bp,
						    func_ext_config[fid].
								      func_cfg);

				if ((cfg & MACP_FUNC_CFG_FLAGS_ENABLED) &&
				    (cfg & MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD))
					count++;
			}
		}
	} else { /* SF */
		int port, port_cnt = FUNC1(bp) ? 2 : 1;

		for (port = 0; port < port_cnt; port++) {
			u32 lic = FUNC5(bp,
					   drv_lic_key[port].max_fcoe_conn) ^
				  FW_ENCODE_32BIT_PATTERN;
			if (lic)
				count++;
		}
	}

	return count;
}