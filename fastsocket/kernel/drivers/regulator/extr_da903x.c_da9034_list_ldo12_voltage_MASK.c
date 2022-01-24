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
 unsigned int FUNC0 (int*) ; 
 int EINVAL ; 
 int* da9034_ldo12_data ; 

__attribute__((used)) static int FUNC1(struct regulator_dev *rdev,
				     unsigned selector)
{
	if (selector > FUNC0(da9034_ldo12_data))
		return -EINVAL;
	return da9034_ldo12_data[selector] * 1000;
}