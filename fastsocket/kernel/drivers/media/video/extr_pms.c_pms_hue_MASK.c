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
#define  MOTOROLA 130 
#define  PHILIPS1 129 
#define  PHILIPS2 128 
 int decoder ; 
 int /*<<< orphan*/  FUNC0 (int,int,short) ; 

__attribute__((used)) static void FUNC1(short hue)
{
	switch(decoder)
	{
		case MOTOROLA:
			FUNC0(0x8A, 0x00, hue);
			break;
		case PHILIPS2:
			FUNC0(0x8A, 0x07, hue);
			break;
		case PHILIPS1:
			FUNC0(0x42, 0x07, hue);
			break;
	}
}