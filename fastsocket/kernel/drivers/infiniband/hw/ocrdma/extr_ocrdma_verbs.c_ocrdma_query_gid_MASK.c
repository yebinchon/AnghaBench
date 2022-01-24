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
typedef  int /*<<< orphan*/  u8 ;
struct ocrdma_dev {int /*<<< orphan*/ * sgid_tbl; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int OCRDMA_MAX_SGID ; 
 struct ocrdma_dev* FUNC0 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC1 (union ib_gid*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (union ib_gid*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ib_device *ibdev, u8 port,
		     int index, union ib_gid *sgid)
{
	struct ocrdma_dev *dev;

	dev = FUNC0(ibdev);
	FUNC2(sgid, 0, sizeof(*sgid));
	if (index >= OCRDMA_MAX_SGID)
		return -EINVAL;

	FUNC1(sgid, &dev->sgid_tbl[index], sizeof(*sgid));

	return 0;
}