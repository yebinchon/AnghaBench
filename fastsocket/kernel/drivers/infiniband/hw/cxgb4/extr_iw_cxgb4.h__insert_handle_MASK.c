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
typedef  int u32 ;
struct idr {int dummy; } ;
struct c4iw_dev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct idr*,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(struct c4iw_dev *rhp, struct idr *idr,
				 void *handle, u32 id, int lock)
{
	int ret;
	int newid;

	do {
		if (!FUNC2(idr, lock ? GFP_KERNEL : GFP_ATOMIC))
			return -ENOMEM;
		if (lock)
			FUNC3(&rhp->lock);
		ret = FUNC1(idr, handle, id, &newid);
		FUNC0(!ret && newid != id);
		if (lock)
			FUNC4(&rhp->lock);
	} while (ret == -EAGAIN);

	return ret;
}