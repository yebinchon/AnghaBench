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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mac_configuration_entry {int dummy; } ;
struct mac_configuration_cmd {int /*<<< orphan*/  hdr; struct mac_configuration_entry* config_table; } ;
struct bnx2x_raw_obj {int /*<<< orphan*/  cl_id; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mac_configuration_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct bnx2x *bp,
	struct bnx2x_vlan_mac_obj *o, int type, int cam_offset, bool add,
	u8 *mac, u16 vlan_id, int opcode, struct mac_configuration_cmd *config)
{
	struct mac_configuration_entry *cfg_entry = &config->config_table[0];
	struct bnx2x_raw_obj *raw = &o->raw;

	FUNC2(bp, o, type, cam_offset,
					 &config->hdr);
	FUNC1(bp, o, add, opcode, mac, vlan_id,
					 cfg_entry);

	FUNC0(BNX2X_MSG_SP, "%s MAC %pM CLID %d CAM offset %d\n",
			 (add ? "setting" : "clearing"),
			 mac, raw->cl_id, cam_offset);
}