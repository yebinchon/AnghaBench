#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct async_submit_ctl {void** scribble; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* gen_syndrome ) (int,size_t,void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct async_submit_ctl*) ; 
 void* FUNC2 (struct page*) ; 
 TYPE_1__ raid6_call ; 
 scalar_t__ raid6_empty_zero_page ; 
 int /*<<< orphan*/  FUNC3 (int,size_t,void**) ; 

__attribute__((used)) static void
FUNC4(struct page **blocks, unsigned int offset, int disks,
		     size_t len, struct async_submit_ctl *submit)
{
	void **srcs;
	int i;

	if (submit->scribble)
		srcs = submit->scribble;
	else
		srcs = (void **) blocks;

	for (i = 0; i < disks; i++) {
		if (blocks[i] == NULL) {
			FUNC0(i > disks - 3); /* P or Q can't be zero */
			srcs[i] = (void*)raid6_empty_zero_page;
		} else
			srcs[i] = FUNC2(blocks[i]) + offset;
	}
	raid6_call.gen_syndrome(disks, len, srcs);
	FUNC1(submit);
}