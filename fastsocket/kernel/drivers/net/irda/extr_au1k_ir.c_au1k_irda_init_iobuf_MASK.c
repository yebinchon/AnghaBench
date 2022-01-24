#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int truesize; int /*<<< orphan*/ * head; int /*<<< orphan*/ * data; int /*<<< orphan*/  state; int /*<<< orphan*/  in_frame; } ;
typedef  TYPE_1__ iobuff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OUTSIDE_FRAME ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(iobuff_t *io, int size)
{
	io->head = FUNC0(size, GFP_KERNEL);
	if (io->head != NULL) {
		io->truesize = size;
		io->in_frame = FALSE;
		io->state    = OUTSIDE_FRAME;
		io->data     = io->head;
	}
	return io->head ? 0 : -ENOMEM;
}