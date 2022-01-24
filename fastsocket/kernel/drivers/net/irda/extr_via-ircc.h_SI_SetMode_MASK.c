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
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(__u16 iobase, int mode)
{
	//__u32 dTmp;
	__u8 bTmp;

	FUNC4(0x28, 0x70);	// S/W Reset
	FUNC2(iobase);
	FUNC1(iobase);
	FUNC5(10);
	FUNC3(iobase, 0x40, 0x0, 0x17);	//RX ,APEN enable,Normal power
	FUNC3(iobase, 0x40, 0x1, mode);	//Set Mode
	FUNC3(iobase, 0x40, 0x2, 0xff);	//Set power to FIR VFIR > 1m
	bTmp = FUNC0(iobase, 0x40, 1);
}