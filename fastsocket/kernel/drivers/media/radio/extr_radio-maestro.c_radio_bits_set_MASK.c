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
struct maestro {int io; int /*<<< orphan*/  muted; } ;

/* Variables and functions */
 int IO_DIR ; 
 int IO_MASK ; 
 int STR_CLK ; 
 int STR_DATA ; 
 int STR_WREN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct maestro *dev, u32 data)
{
	u16 io = dev->io, l, bits;
	u16 omask, odir;

	omask = FUNC0(io + IO_MASK);
	odir = (FUNC0(io + IO_DIR) & ~STR_DATA) | (STR_CLK | STR_WREN);
	FUNC2(odir | STR_DATA, io + IO_DIR);
	FUNC2(~(STR_DATA | STR_CLK | STR_WREN), io + IO_MASK);
	FUNC3(16);
	for (l = 25; l; l--) {
		bits = ((data >> 18) & STR_DATA) | STR_WREN;
		data <<= 1;			/* shift data */
		FUNC2(bits, io);			/* start strobe */
		FUNC3(2);
		FUNC2(bits | STR_CLK, io);	/* HI level */
		FUNC3(2);
		FUNC2(bits, io);			/* LO level */
		FUNC3(4);
	}

	if (!dev->muted)
		FUNC2(0, io);

	FUNC3(4);
	FUNC2(omask, io + IO_MASK);
	FUNC2(odir, io + IO_DIR);
	FUNC1(125);
}