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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,union ib_gid*,int) ; 
 int /*<<< orphan*/  FUNC2 (union ib_gid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (union ib_gid*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 union ib_gid ocrdma_zero_sgid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC6(struct ocrdma_dev *dev, unsigned char *mac_addr,
			    bool is_vlan, u16 vlan_id)
{
	int i;
	union ib_gid new_sgid;
	unsigned long flags;

	FUNC2(&ocrdma_zero_sgid, 0, sizeof(union ib_gid));

	FUNC3(&new_sgid, mac_addr, is_vlan, vlan_id);

	FUNC4(&dev->sgid_lock, flags);
	for (i = 0; i < OCRDMA_MAX_SGID; i++) {
		if (!FUNC0(&dev->sgid_tbl[i], &ocrdma_zero_sgid,
			    sizeof(union ib_gid))) {
			/* found free entry */
			FUNC1(&dev->sgid_tbl[i], &new_sgid,
			       sizeof(union ib_gid));
			FUNC5(&dev->sgid_lock, flags);
			return true;
		} else if (!FUNC0(&dev->sgid_tbl[i], &new_sgid,
				   sizeof(union ib_gid))) {
			/* entry already present, no addition is required. */
			FUNC5(&dev->sgid_lock, flags);
			return false;
		}
	}
	FUNC5(&dev->sgid_lock, flags);
	return false;
}