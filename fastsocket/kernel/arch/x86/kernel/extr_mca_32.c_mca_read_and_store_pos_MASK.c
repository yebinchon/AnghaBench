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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(unsigned char *pos)
{
	int j;
	int found = 0;

	for (j = 0; j < 8; j++) {
		pos[j] = FUNC1(FUNC0(j));
		if (pos[j] != 0xff) {
			/* 0xff all across means no device. 0x00 means
			 * something's broken, but a device is
			 * probably there.  However, if you get 0x00
			 * from a motherboard register it won't matter
			 * what we find.  For the record, on the
			 * 57SLC, the integrated SCSI adapter has
			 * 0xffff for the adapter ID, but nonzero for
			 * other registers.  */

			found = 1;
		}
	}
	return found;
}