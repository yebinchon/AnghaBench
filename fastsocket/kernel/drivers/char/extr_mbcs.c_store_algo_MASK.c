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
struct mbcs_soft {int /*<<< orphan*/  algo_done; int /*<<< orphan*/  algo_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cx_dev {struct mbcs_soft* soft; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mbcs_soft*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cx_dev* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	int n;
	struct cx_dev *cx_dev = FUNC3(dev);
	struct mbcs_soft *soft = cx_dev->soft;

	if (count <= 0)
		return 0;

	n = FUNC2(buf, NULL, 0);

	if (n == 1) {
		FUNC1(soft);
		if (FUNC4(soft->algo_queue,
					FUNC0(&soft->algo_done)))
			return -ERESTARTSYS;
	}

	return count;
}