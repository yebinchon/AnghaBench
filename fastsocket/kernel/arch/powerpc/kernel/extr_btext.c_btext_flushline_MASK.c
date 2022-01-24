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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int dispDeviceDepth ; 
 int* dispDeviceRect ; 
 int dispDeviceRowBytes ; 
 int g_loc_Y ; 

void FUNC1(void)
{
	unsigned int *base	= (unsigned int *)FUNC0(0, g_loc_Y << 4);
	unsigned long width 	= ((dispDeviceRect[2] - dispDeviceRect[0]) *
					(dispDeviceDepth >> 3)) >> 2;
	int i,j;

	for (i=0; i < 16; i++)
	{
		unsigned int *ptr = base;
		for(j = width; j > 0; j -= 8) {
			__asm__ __volatile__ ("dcbst 0,%0" :: "r" (ptr));
			ptr += 8;
		}
		base += (dispDeviceRowBytes >> 2);
	}
	__asm__ __volatile__ ("sync" ::: "memory");
}