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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int) ; 

int FUNC4(struct scatterlist *sg, int count)
{
	void *addr;
	int i;

	FUNC1(sg, count);
	for (i = 0; i < count; i++, sg++) {
		addr = (void *) FUNC0(GFP_KERNEL);
		if (!addr) {
			FUNC3(sg, i);
			return -ENOMEM;
		}
		FUNC2(sg, addr, PAGE_SIZE);
	}
	return 0;
}