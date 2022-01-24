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
 int /*<<< orphan*/  REG0 ; 
 int /*<<< orphan*/  REG1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int qlcfg5 ; 
 int qlcfg8 ; 
 int qlcfg9 ; 

void FUNC3(int qbase, int id, int int_type)
{
	FUNC2(1, qbase + 8);	/* set for PIO pseudo DMA */
	REG0;
	FUNC2(0x40 | qlcfg8 | id, qbase + 8);	/* (ini) bus id, disable scsi rst */
	FUNC2(qlcfg5, qbase + 5);	/* select timer */
	FUNC2(qlcfg9, qbase + 9);	/* prescaler */

#if QL_RESET_AT_START
	outb(3, qbase + 3);

	REG1;
	/* FIXME: timeout */
	while (inb(qbase + 0xf) & 4)
		cpu_relax();

	REG0;
#endif
}