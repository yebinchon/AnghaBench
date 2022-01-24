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
struct au0828_dev {int dummy; } ;

/* Variables and functions */
 int AU0828_SENSORCTRL_100 ; 
 int AU0828_SENSORCTRL_VBI_103 ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

int FUNC2(struct au0828_dev *d)
{
	FUNC1(1, "au0828_analog_stream_enable called\n");
	FUNC0(d, AU0828_SENSORCTRL_VBI_103, 0x00);
	FUNC0(d, 0x106, 0x00);
	/* set x position */
	FUNC0(d, 0x110, 0x00);
	FUNC0(d, 0x111, 0x00);
	FUNC0(d, 0x114, 0xa0);
	FUNC0(d, 0x115, 0x05);
	/* set y position */
	FUNC0(d, 0x112, 0x00);
	FUNC0(d, 0x113, 0x00);
	FUNC0(d, 0x116, 0xf2);
	FUNC0(d, 0x117, 0x00);
	FUNC0(d, AU0828_SENSORCTRL_100, 0xb3);

	return 0;
}