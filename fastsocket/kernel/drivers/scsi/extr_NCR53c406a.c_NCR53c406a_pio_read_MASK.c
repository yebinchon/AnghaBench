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

/* Variables and functions */
 int /*<<< orphan*/  PIO_FIFO ; 
 int /*<<< orphan*/  PIO_STATUS ; 
 int /*<<< orphan*/  REG1 ; 
 scalar_t__ fast_pio ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static __inline__ int FUNC2(unsigned char *request, unsigned int reqlen)
{
	int i;
	int len;		/* current scsi fifo size */

	REG1;
	while (reqlen) {
		i = FUNC0(PIO_STATUS);
		/*    VDEB(printk("pio_status=%x\n", i)); */
		if (i & 0x80)
			return 0;

		switch (i & 0x1e) {
		default:
		case 0x10:
			len = 0;
			break;
		case 0x0:
			len = 1;
			break;
		case 0x8:
			len = 42;
			break;
		case 0xc:
			len = 84;
			break;
		case 0xe:
			len = 128;
			break;
		}

		if ((i & 0x40) && len == 0) {	/* fifo empty and interrupt occurred */
			return 0;
		}

		if (len) {
			if (len > reqlen)
				len = reqlen;

			if (fast_pio && len > 3) {
				FUNC1(PIO_FIFO, request, len >> 2);
				request += len & 0xfc;
				reqlen -= len & 0xfc;
			} else {
				while (len--) {
					*request++ = FUNC0(PIO_FIFO);
					reqlen--;
				}
			}
		}
	}
	return 0;
}