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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ELMC_CTRL ; 
 int ELMC_CTRL_CA ; 
 int ELMC_CTRL_RST ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(int ioaddr, int ints)
{
	/* the 3c523 requires a minimum of 500 ns.  The delays here might be
	   a little too large, and hence they may cut the performance of the
	   card slightly.  If someone who knows a little more about Linux
	   timing would care to play with these, I'd appreciate it. */

	/* this bit masking stuff is crap.  I'd rather have separate
	   registers with strobe triggers for each of these functions.  <sigh>
	   Ya take what ya got. */

	FUNC1(ELMC_CTRL_RST | 0x3 | ELMC_CTRL_CA | ints, ioaddr + ELMC_CTRL);
	FUNC0();		/* > 500 ns */
	FUNC1(ELMC_CTRL_RST | 0x3 | ints, ioaddr + ELMC_CTRL);
}