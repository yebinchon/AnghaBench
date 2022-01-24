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
struct regulator {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*,int) ; 

int FUNC2(struct regulator *regulator,
				   int min_uV, int max_uV)
{
	int i, voltages, ret;

	ret = FUNC0(regulator);
	if (ret < 0)
		return ret;
	voltages = ret;

	for (i = 0; i < voltages; i++) {
		ret = FUNC1(regulator, i);

		if (ret >= min_uV && ret <= max_uV)
			return 1;
	}

	return 0;
}