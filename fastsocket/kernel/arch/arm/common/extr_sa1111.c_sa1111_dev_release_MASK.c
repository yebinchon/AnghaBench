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
struct sa1111_dev {int /*<<< orphan*/  res; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sa1111_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct device *_dev)
{
	struct sa1111_dev *dev = FUNC0(_dev);

	FUNC2(&dev->res);
	FUNC1(dev);
}