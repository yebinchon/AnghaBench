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
typedef  int /*<<< orphan*/  uint32_t ;
struct tty_struct {int dummy; } ;
struct hvcs_struct {int todo_mask; int /*<<< orphan*/  chars_in_buffer; int /*<<< orphan*/ * buffer; struct tty_struct* tty; TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int HVCS_TRY_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(struct hvcs_struct *hvcsd)
{
	uint32_t unit_address = hvcsd->vdev->unit_address;
	struct tty_struct *tty = hvcsd->tty;
	int sent;

	if (hvcsd->todo_mask & HVCS_TRY_WRITE) {
		/* won't send partial writes */
		sent = FUNC0(unit_address,
				&hvcsd->buffer[0],
				hvcsd->chars_in_buffer );
		if (sent > 0) {
			hvcsd->chars_in_buffer = 0;
			/* wmb(); */
			hvcsd->todo_mask &= ~(HVCS_TRY_WRITE);
			/* wmb(); */

			/*
			 * We are still obligated to deliver the data to the
			 * hypervisor even if the tty has been closed because
			 * we commited to delivering it.  But don't try to wake
			 * a non-existent tty.
			 */
			if (tty) {
				FUNC1(tty);
			}
		}
	}
}