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
struct tty_struct {int dummy; } ;
struct etrax_recv_buffer {unsigned int length; int /*<<< orphan*/  error; scalar_t__ buffer; struct etrax_recv_buffer* next; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct e100_serial {unsigned int recv_cnt; int /*<<< orphan*/ * last_recv_buffer; struct etrax_recv_buffer* first_recv_buffer; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct etrax_recv_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct e100_serial *info)
{
	struct tty_struct *tty;
	struct etrax_recv_buffer *buffer;
	unsigned long flags;

	FUNC2(flags);
	tty = info->port.tty;

	if (!tty) {
		FUNC1(flags);
		return;
	}

	while ((buffer = info->first_recv_buffer) != NULL) {
		unsigned int count = buffer->length;

		FUNC5(tty, buffer->buffer, count);
		info->recv_cnt -= count;

		if (count == buffer->length) {
			info->first_recv_buffer = buffer->next;
			FUNC0(buffer);
		} else {
			buffer->length -= count;
			FUNC3(buffer->buffer, buffer->buffer + count, buffer->length);
			buffer->error = TTY_NORMAL;
		}
	}

	if (!info->first_recv_buffer)
		info->last_recv_buffer = NULL;

	FUNC1(flags);

	/* This includes a check for low-latency */
	FUNC4(tty);
}