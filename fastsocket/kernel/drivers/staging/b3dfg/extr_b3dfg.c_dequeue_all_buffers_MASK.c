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
struct b3dfg_dev {struct b3dfg_buffer* buffers; } ;
struct b3dfg_buffer {int /*<<< orphan*/  list; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  B3DFG_BUFFER_POLLED ; 
 int b3dfg_nbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct b3dfg_dev *fgdev)
{
	int i;
	for (i = 0; i < b3dfg_nbuf; i++) {
		struct b3dfg_buffer *buf = &fgdev->buffers[i];
		buf->state = B3DFG_BUFFER_POLLED;
		FUNC0(&buf->list);
	}
}