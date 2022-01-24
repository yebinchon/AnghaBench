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
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int* isink_cur ; 

__attribute__((used)) static int FUNC1(int min_uA, int max_uA, u16 *setting)
{
	int i;

	for (i = FUNC0(isink_cur) - 1; i >= 0; i--) {
		if (min_uA <= isink_cur[i] && max_uA >= isink_cur[i]) {
			*setting = i;
			return 0;
		}
	}
	return -EINVAL;
}