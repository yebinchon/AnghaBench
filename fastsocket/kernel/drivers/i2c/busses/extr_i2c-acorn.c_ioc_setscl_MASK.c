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
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  IOC_CONTROL ; 
 int SCL ; 
 int SDA ; 
 int force_ones ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data, int state)
{
	u_int ioc_control = FUNC0(IOC_CONTROL) & ~(SCL | SDA);
	u_int ones = force_ones;

	if (state)
		ones |= SCL;
	else
		ones &= ~SCL;

	force_ones = ones;

 	FUNC1(ioc_control | ones, IOC_CONTROL);
}