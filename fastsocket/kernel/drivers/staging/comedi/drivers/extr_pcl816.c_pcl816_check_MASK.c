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
 scalar_t__ PCL816_CONTROL ; 
 scalar_t__ PCL816_MUX ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned long iobase)
{
	FUNC1(0x00, iobase + PCL816_MUX);
	FUNC2(1);
	if (FUNC0(iobase + PCL816_MUX) != 0x00)
		return 1;	/* there isn't card */
	FUNC1(0x55, iobase + PCL816_MUX);
	FUNC2(1);
	if (FUNC0(iobase + PCL816_MUX) != 0x55)
		return 1;	/* there isn't card */
	FUNC1(0x00, iobase + PCL816_MUX);
	FUNC2(1);
	FUNC1(0x18, iobase + PCL816_CONTROL);
	FUNC2(1);
	if (FUNC0(iobase + PCL816_CONTROL) != 0x18)
		return 1;	/* there isn't card */
	return 0;		/*  ok, card exist */
}