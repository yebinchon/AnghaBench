#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct etrax_recv_buffer {int length; unsigned char error; unsigned char* buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct e100_serial {TYPE_2__ icount; TYPE_1__ port; scalar_t__ uses_dma_in; } ;

/* Variables and functions */
 struct etrax_recv_buffer* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct e100_serial*,struct etrax_recv_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,unsigned char,unsigned char) ; 

__attribute__((used)) static int
FUNC3(struct e100_serial *info, unsigned char data, unsigned char flag)
{
	struct etrax_recv_buffer *buffer;
	if (info->uses_dma_in) {
		if (!(buffer = FUNC0(4)))
			return 0;

		buffer->length = 1;
		buffer->error = flag;
		buffer->buffer[0] = data;

		FUNC1(info, buffer);

		info->icount.rx++;
	} else {
		struct tty_struct *tty = info->port.tty;
		FUNC2(tty, data, flag);
		info->icount.rx++;
	}

	return 1;
}