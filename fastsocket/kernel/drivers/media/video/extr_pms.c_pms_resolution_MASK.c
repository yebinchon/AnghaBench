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
 int MVVMEMORYWIDTH ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (short,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int standard ; 

__attribute__((used)) static void FUNC4(short width, short height)
{
	int fg_height;

	fg_height=height;
	if(fg_height>280)
		fg_height=280;

	FUNC1(0x18, fg_height);
	FUNC1(0x19, fg_height>>8);

	if(standard==1)
	{
		FUNC1(0x1A, 0xFC);
		FUNC1(0x1B, 0x00);
		if(height>fg_height)
			FUNC3(240,240);
		else
			FUNC3(fg_height,240);
	}
	else
	{
		FUNC1(0x1A, 0x1A);
		FUNC1(0x1B, 0x01);
		if(fg_height>256)
			FUNC3(270,270);
		else
			FUNC3(fg_height, 270);
	}
	FUNC1(0x12,0);
	FUNC1(0x13, MVVMEMORYWIDTH);
	FUNC1(0x42, 0x00);
	FUNC1(0x43, 0x00);
	FUNC1(0x44, MVVMEMORYWIDTH);

	FUNC1(0x22, width+8);
	FUNC1(0x23, (width+8)>> 8);

	if(standard==1)
		FUNC2(width,640);
	else
		FUNC2(width+8, 768);

	FUNC1(0x30, FUNC0(0x30)&0xFE);
	FUNC1(0x08, FUNC0(0x08)|0x01);
	FUNC1(0x01, FUNC0(0x01)&0xFD);
	FUNC1(0x32, 0x00);
	FUNC1(0x33, MVVMEMORYWIDTH);
}