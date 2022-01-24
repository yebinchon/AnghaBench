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
 unsigned char* FUNC0 (long,long) ; 
 int dispDeviceDepth ; 
 int dispDeviceRowBytes ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned int*,int) ; 
 unsigned char* vga_font ; 

__attribute__((used)) static void FUNC4(unsigned char c, long locX, long locY)
{
	unsigned char *base	= FUNC0(locX << 3, locY << 4);
	unsigned char *font	= &vga_font[((unsigned int)c) * 16];
	int rb			= dispDeviceRowBytes;

	switch(dispDeviceDepth) {
	case 24:
	case 32:
		FUNC2(font, (unsigned int *)base, rb);
		break;
	case 15:
	case 16:
		FUNC1(font, (unsigned int *)base, rb);
		break;
	case 8:
		FUNC3(font, (unsigned int *)base, rb);
		break;
	}
}