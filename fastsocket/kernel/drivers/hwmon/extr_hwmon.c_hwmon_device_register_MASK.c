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
struct device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWMON_ID_FORMAT ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int MAX_ID_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hwmon_class ; 
 int /*<<< orphan*/  hwmon_idr ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  idr_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

struct device *FUNC10(struct device *dev)
{
	struct device *hwdev;
	int id, err;

again:
	if (FUNC9(FUNC5(&hwmon_idr, GFP_KERNEL) == 0))
		return FUNC0(-ENOMEM);

	FUNC7(&idr_lock);
	err = FUNC4(&hwmon_idr, NULL, &id);
	FUNC8(&idr_lock);

	if (FUNC9(err == -EAGAIN))
		goto again;
	else if (FUNC9(err))
		return FUNC0(err);

	id = id & MAX_ID_MASK;
	hwdev = FUNC3(hwmon_class, dev, FUNC2(0, 0), NULL,
			      HWMON_ID_FORMAT, id);

	if (FUNC1(hwdev)) {
		FUNC7(&idr_lock);
		FUNC6(&hwmon_idr, id);
		FUNC8(&idr_lock);
	}

	return hwdev;
}