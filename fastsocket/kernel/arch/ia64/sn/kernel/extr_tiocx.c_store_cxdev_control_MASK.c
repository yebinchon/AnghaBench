#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nasid; } ;
struct cx_dev {TYPE_1__ cx_id; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EPERM ; 
 int /*<<< orphan*/  TIOCX_CORELET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx_dev*) ; 
 struct cx_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, const char *buf,
				   size_t count)
{
	int n;
	struct cx_dev *cx_dev = FUNC4(dev);

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if (count <= 0)
		return 0;

	n = FUNC1(buf, NULL, 0);

	switch (n) {
	case 1:
		FUNC2(cx_dev->cx_id.nasid, TIOCX_CORELET);
		FUNC3(cx_dev);
		break;
	case 2:
		FUNC3(cx_dev);
		break;
	case 3:
		FUNC2(cx_dev->cx_id.nasid, TIOCX_CORELET);
		break;
	default:
		break;
	}

	return count;
}