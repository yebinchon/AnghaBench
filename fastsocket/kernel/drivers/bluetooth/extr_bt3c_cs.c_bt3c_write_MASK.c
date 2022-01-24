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
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned int iobase, int fifo_size, __u8 *buf, int len)
{
	int actual = 0;

	FUNC0(iobase, 0x7080);

	/* Fill FIFO with current frame */
	while (actual < len) {
		/* Transmit next byte */
		FUNC2(iobase, buf[actual]);
		actual++;
	}

	FUNC1(iobase, 0x7005, actual);

	return actual;
}