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
struct pad_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pad_desc*,int) ; 
 int FUNC1 (struct pad_desc*) ; 

int FUNC2(struct pad_desc *pad_list, unsigned count)
{
	struct pad_desc *p = pad_list;
	int i;
	int ret;

	for (i = 0; i < count; i++) {
		ret = FUNC1(p);
		if (ret)
			goto setup_error;
		p++;
	}
	return 0;

setup_error:
	FUNC0(pad_list, i);
	return ret;
}