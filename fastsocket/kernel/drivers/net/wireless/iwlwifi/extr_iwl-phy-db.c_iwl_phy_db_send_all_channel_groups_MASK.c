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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct iwl_phy_db_entry {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct iwl_phy_db {int /*<<< orphan*/  trans; } ;
typedef  enum iwl_phy_db_section_type { ____Placeholder_iwl_phy_db_section_type } iwl_phy_db_section_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,scalar_t__,int) ; 
 struct iwl_phy_db_entry* FUNC2 (struct iwl_phy_db*,int,scalar_t__) ; 
 int FUNC3 (struct iwl_phy_db*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
					struct iwl_phy_db *phy_db,
					enum iwl_phy_db_section_type type,
					u8 max_ch_groups)
{
	u16 i;
	int err;
	struct iwl_phy_db_entry *entry;

	/* Send all the  channel specific groups to operational fw */
	for (i = 0; i < max_ch_groups; i++) {
		entry = FUNC2(phy_db,
					       type,
					       i);
		if (!entry)
			return -EINVAL;

		/* Send the requested PHY DB section */
		err = FUNC3(phy_db,
					  type,
					  entry->size,
					  entry->data);
		if (err) {
			FUNC1(phy_db->trans,
				"Can't SEND phy_db section %d (%d), err %d",
				type, i, err);
			return err;
		}

		FUNC0(phy_db->trans,
			       "Sent PHY_DB HCMD, type = %d num = %d",
			       type, i);
	}

	return 0;
}