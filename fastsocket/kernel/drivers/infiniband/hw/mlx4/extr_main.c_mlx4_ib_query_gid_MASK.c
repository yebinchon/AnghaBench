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
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int,union ib_gid*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,int,union ib_gid*) ; 
 scalar_t__ FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev, u8 port, int index,
			     union ib_gid *gid)
{
	if (FUNC2(ibdev, port) == IB_LINK_LAYER_INFINIBAND)
		return FUNC0(ibdev, port, index, gid, 0);
	else
		return FUNC1(ibdev, port, index, gid);
}