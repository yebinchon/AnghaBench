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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_PF_KDOORBELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 struct adapter* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct adapter*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct net_device *dev, u16 qid, u16 pidx,
			u16 size)
{
	struct adapter *adap = FUNC3(dev);
	u16 hw_pidx, hw_cidx;
	int ret;

	ret = FUNC4(adap, qid, &hw_pidx, &hw_cidx);
	if (ret)
		goto out;

	if (pidx != hw_pidx) {
		u16 delta;

		if (pidx >= hw_pidx)
			delta = pidx - hw_pidx;
		else
			delta = size - hw_pidx + pidx;
		FUNC6();
		FUNC5(adap, FUNC0(A_SGE_PF_KDOORBELL),
			     FUNC2(qid) | FUNC1(delta));
	}
out:
	return ret;
}