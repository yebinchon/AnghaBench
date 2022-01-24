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
struct sh_flctl {int /*<<< orphan*/ * done_buff; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC4(struct sh_flctl *flctl, int rlen, int offset)
{
	int i, len_4align;
	unsigned long *data = (unsigned long *)&flctl->done_buff[offset];
	void *fifo_addr = (void *)FUNC0(flctl);

	len_4align = (rlen + 3) / 4;
	for (i = 0; i < len_4align; i++) {
		FUNC2(flctl);
		FUNC3(FUNC1(data[i]), fifo_addr);
	}
}