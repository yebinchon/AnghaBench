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
struct veth_lpevent {int dummy; } ;
struct veth_allocation {int num; int /*<<< orphan*/  c; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HvLpIndex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HvLpEvent_Type_VirtualLan ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,struct veth_allocation*) ; 
 int /*<<< orphan*/  veth_complete_allocation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(HvLpIndex rlp, int number)
{
	struct veth_allocation vc =
		{ FUNC0(vc.c), 0 };

	FUNC1(rlp, HvLpEvent_Type_VirtualLan,
			    sizeof(struct veth_lpevent), number,
			    &veth_complete_allocation, &vc);
	FUNC2(&vc.c);

	return vc.num;
}