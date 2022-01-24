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
struct i2c_adapter {int nr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ID_MASK ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  i2c_adapter_idr ; 
 int FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct i2c_adapter*,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct i2c_adapter *adap)
{
	int	id;
	int	status;

	if (adap->nr & ~MAX_ID_MASK)
		return -EINVAL;

retry:
	if (FUNC2(&i2c_adapter_idr, GFP_KERNEL) == 0)
		return -ENOMEM;

	FUNC4(&core_lock);
	/* "above" here means "above or equal to", sigh;
	 * we need the "equal to" result to force the result
	 */
	status = FUNC1(&i2c_adapter_idr, adap, adap->nr, &id);
	if (status == 0 && id != adap->nr) {
		status = -EBUSY;
		FUNC3(&i2c_adapter_idr, id);
	}
	FUNC5(&core_lock);
	if (status == -EAGAIN)
		goto retry;

	if (status == 0)
		status = FUNC0(adap);
	return status;
}