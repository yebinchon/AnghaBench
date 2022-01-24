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
 unsigned int FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,unsigned int) ; 

void FUNC2(unsigned int sys_clk,
			    unsigned int ser_clk,
			    unsigned int tmr_clk)
{
	unsigned int plb_clk = FUNC0(sys_clk, tmr_clk, 1);

	/* serial clocks beed fixup based on int/ext */
	FUNC1(0, "/plb/opb/serial@10000200", ser_clk, plb_clk);
	FUNC1(1, "/plb/opb/serial@10000300", ser_clk, plb_clk);
	FUNC1(2, "/plb/opb/serial@10000600", ser_clk, plb_clk);
}