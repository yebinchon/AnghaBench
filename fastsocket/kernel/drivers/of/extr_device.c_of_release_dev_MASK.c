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
struct of_device {int /*<<< orphan*/  node; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct of_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct of_device* FUNC2 (struct device*) ; 

void FUNC3(struct device *dev)
{
	struct of_device *ofdev;

	ofdev = FUNC2(dev);
	FUNC1(ofdev->node);
	FUNC0(ofdev);
}