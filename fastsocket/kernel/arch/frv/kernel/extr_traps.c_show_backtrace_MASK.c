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
struct user_context {int dummy; } ;
struct pt_regs {unsigned long sp; struct pt_regs* next_frame; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 

void FUNC2(struct pt_regs *frame, unsigned long sp)
{
	struct pt_regs *frame0;
	unsigned long tos = 0, stop = 0, base;
	int format;

	base = ((((unsigned long) frame) + 8191) & ~8191) - sizeof(struct user_context);
	frame0 = (struct pt_regs *) base;

	if (sp) {
		tos = sp;
		stop = (unsigned long) frame;
	}

	FUNC0("\nProcess %s (pid: %d)\n\n", current->comm, current->pid);

	for (;;) {
		/* dump stack segment between frames */
		//printk("%08lx -> %08lx\n", tos, stop);
		format = 0;
		while (tos < stop) {
			if (format == 0)
				FUNC0(" %04lx :", tos & 0xffff);

			FUNC0(" %08lx", *(unsigned long *) tos);

			tos += 4;
			format++;
			if (format == 8) {
				FUNC0("\n");
				format = 0;
			}
		}

		if (format > 0)
			FUNC0("\n");

		/* dump frame 0 outside of the loop */
		if (frame == frame0)
			break;

		tos = frame->sp;
		if (((unsigned long) frame) + sizeof(*frame) != tos) {
			FUNC0("-- TOS %08lx does not follow frame %p --\n",
			       tos, frame);
			break;
		}

		FUNC1(frame);

		/* dump the stack between this frame and the next */
		stop = (unsigned long) frame->next_frame;
		if (stop != base &&
		    (stop < tos ||
		     stop > base ||
		     (stop < base && stop + sizeof(*frame) > base) ||
		     stop & 3)) {
			FUNC0("-- next_frame %08lx is invalid (range %08lx-%08lx) --\n",
			       stop, tos, base);
			break;
		}

		/* move to next frame */
		frame = frame->next_frame;
	}

	/* we can always dump frame 0, even if the rest of the stack is corrupt */
	FUNC1(frame0);

}