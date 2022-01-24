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
 unsigned long SIZE_8255 ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

__attribute__((used)) static int FUNC2(int dir, int port, int data,
				unsigned long iobase)
{
	int movport = SIZE_8255 * (iobase >> 12);

	iobase &= 0x0fff;

	if (dir) {
		FUNC1(port + movport, iobase);
		FUNC1(data, iobase + 1);
		return 0;
	} else {
		FUNC1(port + movport, iobase);
		return FUNC0(iobase + 1);
	}
}