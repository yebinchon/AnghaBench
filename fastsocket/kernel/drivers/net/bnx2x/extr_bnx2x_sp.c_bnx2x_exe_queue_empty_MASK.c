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
struct bnx2x_exe_queue_obj {int /*<<< orphan*/  pending_comp; int /*<<< orphan*/  exe_queue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline bool FUNC2(struct bnx2x_exe_queue_obj *o)
{
	bool empty = FUNC0(&o->exe_queue);

	/* Don't reorder!!! */
	FUNC1();

	return empty && FUNC0(&o->pending_comp);
}