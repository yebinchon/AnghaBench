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
struct idr {int dummy; } ;
struct ib_uobject {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ib_uverbs_idr_lock ; 
 int FUNC0 (struct idr*,struct ib_uobject*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct idr *idr, struct ib_uobject *uobj)
{
	int ret;

retry:
	if (!FUNC1(idr, GFP_KERNEL))
		return -ENOMEM;

	FUNC2(&ib_uverbs_idr_lock);
	ret = FUNC0(idr, uobj, &uobj->id);
	FUNC3(&ib_uverbs_idr_lock);

	if (ret == -EAGAIN)
		goto retry;

	return ret;
}