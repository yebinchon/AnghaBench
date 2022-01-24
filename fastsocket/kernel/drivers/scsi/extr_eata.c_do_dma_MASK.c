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
typedef  unsigned char unchar ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int MAXLOOP ; 
 scalar_t__ REG_CMD ; 
 scalar_t__ REG_LM ; 
 scalar_t__ REG_LOW ; 
 scalar_t__ REG_MID ; 
 scalar_t__ REG_MSB ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long,int) ; 

__attribute__((used)) static int FUNC3(unsigned long iobase, unsigned long addr, unchar cmd)
{
	unsigned char *byaddr;
	unsigned long devaddr;

	if (FUNC2(iobase, (addr ? MAXLOOP * 100 : MAXLOOP)))
		return 1;

	if (addr) {
		devaddr = FUNC0(addr);
		byaddr = (unsigned char *)&devaddr;
		FUNC1(byaddr[3], iobase + REG_LOW);
		FUNC1(byaddr[2], iobase + REG_LM);
		FUNC1(byaddr[1], iobase + REG_MID);
		FUNC1(byaddr[0], iobase + REG_MSB);
	}

	FUNC1(cmd, iobase + REG_CMD);
	return 0;
}