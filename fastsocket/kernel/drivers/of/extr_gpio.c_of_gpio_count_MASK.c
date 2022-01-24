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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int FUNC0 (struct device_node*,char*,char*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

unsigned int FUNC1(struct device_node *np)
{
	unsigned int cnt = 0;

	do {
		int ret;

		ret = FUNC0(np, "gpios", "#gpio-cells",
						  cnt, NULL, NULL);
		/* A hole in the gpios = <> counts anyway. */
		if (ret < 0 && ret != -EEXIST)
			break;
	} while (++cnt);

	return cnt;
}