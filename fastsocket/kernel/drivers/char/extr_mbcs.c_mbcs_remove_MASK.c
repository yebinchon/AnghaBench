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
struct cx_dev {int /*<<< orphan*/  dev; scalar_t__ soft; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_algo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cx_dev*) ; 

__attribute__((used)) static int FUNC3(struct cx_dev *dev)
{
	if (dev->soft) {
		FUNC2(dev);
		FUNC1(dev->soft);
	}

	FUNC0(&dev->dev, &dev_attr_algo);

	return 0;
}