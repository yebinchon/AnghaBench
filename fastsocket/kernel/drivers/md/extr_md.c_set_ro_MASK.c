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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,char**,int) ; 
 int start_readonly ; 

__attribute__((used)) static int FUNC1(const char *val, struct kernel_param *kp)
{
	char *e;
	int num = FUNC0(val, &e, 10);
	if (*val && (*e == '\0' || *e == '\n')) {
		start_readonly = num;
		return 0;
	}
	return -EINVAL;
}