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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u16 ;
struct ocrdma_dev {int /*<<< orphan*/  sgid_lock; int /*<<< orphan*/ * sgid_tbl; } ;

/* Variables and functions */
 int OCRDMA_MAX_SGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,union ib_gid*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (union ib_gid*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC5(struct ocrdma_dev *dev, unsigned char *mac_addr,
			    bool is_vlan, u16 vlan_id)
{
	int found = false;
	int i;
	union ib_gid sgid;
	unsigned long flags;

	FUNC2(&sgid, mac_addr, is_vlan, vlan_id);

	FUNC3(&dev->sgid_lock, flags);
	/* first is default sgid, which cannot be deleted. */
	for (i = 1; i < OCRDMA_MAX_SGID; i++) {
		if (!FUNC0(&dev->sgid_tbl[i], &sgid, sizeof(union ib_gid))) {
			/* found matching entry */
			FUNC1(&dev->sgid_tbl[i], 0, sizeof(union ib_gid));
			found = true;
			break;
		}
	}
	FUNC4(&dev->sgid_lock, flags);
	return found;
}