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
typedef  int u16 ;
struct iwl_phy_db_cmd {void* length; void* type; } ;
struct iwl_phy_db {int /*<<< orphan*/  trans; } ;
struct iwl_host_cmd {int* len; int /*<<< orphan*/ * dataflags; struct iwl_phy_db_cmd** data; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  IWL_HCMD_DFL_NOCOPY ; 
 int /*<<< orphan*/  PHY_DB_CMD ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iwl_host_cmd*) ; 

__attribute__((used)) static int FUNC3(struct iwl_phy_db *phy_db, u16 type,
			       u16 length, void *data)
{
	struct iwl_phy_db_cmd phy_db_cmd;
	struct iwl_host_cmd cmd = {
		.id = PHY_DB_CMD,
		.flags = CMD_SYNC,
	};

	FUNC0(phy_db->trans,
		       "Sending PHY-DB hcmd of type %d, of length %d\n",
		       type, length);

	/* Set phy db cmd variables */
	phy_db_cmd.type = FUNC1(type);
	phy_db_cmd.length = FUNC1(length);

	/* Set hcmd variables */
	cmd.data[0] = &phy_db_cmd;
	cmd.len[0] = sizeof(struct iwl_phy_db_cmd);
	cmd.data[1] = data;
	cmd.len[1] = length;
	cmd.dataflags[1] = IWL_HCMD_DFL_NOCOPY;

	return FUNC2(phy_db->trans, &cmd);
}