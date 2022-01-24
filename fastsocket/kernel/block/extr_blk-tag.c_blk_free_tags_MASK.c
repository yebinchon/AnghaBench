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
struct blk_queue_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct blk_queue_tag*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct blk_queue_tag *bqt)
{
	if (FUNC2(!FUNC1(bqt)))
		FUNC0();
}