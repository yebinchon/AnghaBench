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
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int LP3971_LDO1 ; 
 int FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *dev, unsigned index)
{
	int ldo = FUNC1(dev) - LP3971_LDO1;
	return 1000 * FUNC0(ldo)[index];
}