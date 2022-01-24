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
 int /*<<< orphan*/  AU0828_SENSORCTRL_100 ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct au0828_dev *dev)
{
	FUNC1(1, "au0828_analog_stream_reset called\n");
	FUNC0(dev, AU0828_SENSORCTRL_100, 0x0);
	FUNC2(30);
	FUNC0(dev, AU0828_SENSORCTRL_100, 0xb3);
}