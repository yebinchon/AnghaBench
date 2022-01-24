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
struct ipath_mcast {scalar_t__ n_attached; int /*<<< orphan*/  refcount; int /*<<< orphan*/  wait; int /*<<< orphan*/  qp_list; union ib_gid mgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ipath_mcast* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ipath_mcast *FUNC4(union ib_gid *mgid)
{
	struct ipath_mcast *mcast;

	mcast = FUNC3(sizeof *mcast, GFP_KERNEL);
	if (!mcast)
		goto bail;

	mcast->mgid = *mgid;
	FUNC0(&mcast->qp_list);
	FUNC2(&mcast->wait);
	FUNC1(&mcast->refcount, 0);
	mcast->n_attached = 0;

bail:
	return mcast;
}