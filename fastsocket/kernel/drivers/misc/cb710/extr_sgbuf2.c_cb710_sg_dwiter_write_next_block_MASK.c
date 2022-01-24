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
typedef  int /*<<< orphan*/  uint32_t ;
struct sg_mapping_iter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sg_mapping_iter*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_mapping_iter*,int /*<<< orphan*/ ) ; 

void FUNC3(struct sg_mapping_iter *miter, uint32_t data)
{
	uint32_t *ptr = NULL;

	if (FUNC0(FUNC1(miter, &ptr))) {
		if (ptr)
			*ptr = data;
		else
			return;
	} else
		FUNC2(miter, data);
}