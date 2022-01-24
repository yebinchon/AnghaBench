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
typedef  int u32 ;
typedef  int u16 ;
struct maestro {int io; int tuned; int stereo; scalar_t__ muted; } ;

/* Variables and functions */
 int IO_MASK ; 
 int STR_CLK ; 
 int STR_DATA ; 
 int STR_MOST ; 
 int STR_WREN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u32 FUNC3(struct maestro *dev)
{
	u16 io = dev->io, l, rdata;
	u32 data = 0;
	u16 omask;

	omask = FUNC0(io + IO_MASK);
	FUNC1(~(STR_CLK | STR_WREN), io + IO_MASK);
	FUNC1(0, io);
	FUNC2(16);

	for (l = 24; l--;) {
		FUNC1(STR_CLK, io);		/* HI state */
		FUNC2(2);
		if (!l)
			dev->tuned = FUNC0(io) & STR_MOST ? 0 : 0xffff;
		FUNC1(0, io);			/* LO state */
		FUNC2(2);
		data <<= 1;			/* shift data */
		rdata = FUNC0(io);
		if (!l)
			dev->stereo = (rdata & STR_MOST) ?  0 : 1;
		else if (rdata & STR_DATA)
			data++;
		FUNC2(2);
	}

	if (dev->muted)
		FUNC1(STR_WREN, io);

	FUNC2(4);
	FUNC1(omask, io + IO_MASK);

	return data & 0x3ffe;
}