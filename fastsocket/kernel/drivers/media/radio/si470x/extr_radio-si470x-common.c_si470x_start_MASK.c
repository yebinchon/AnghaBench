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
struct si470x_device {int* registers; } ;

/* Variables and functions */
 size_t CHANNEL ; 
 int CHANNEL_CHAN ; 
 size_t POWERCFG ; 
 int POWERCFG_DMUTE ; 
 int POWERCFG_ENABLE ; 
 int POWERCFG_RDSM ; 
 size_t SYSCONFIG1 ; 
 int SYSCONFIG1_DE ; 
 size_t SYSCONFIG2 ; 
 int SYSCONFIG2_BAND ; 
 int SYSCONFIG2_SPACE ; 
 int band ; 
 int FUNC0 (struct si470x_device*,int) ; 
 int FUNC1 (struct si470x_device*,size_t) ; 
 int space ; 

int FUNC2(struct si470x_device *radio)
{
	int retval;

	/* powercfg */
	radio->registers[POWERCFG] =
		POWERCFG_DMUTE | POWERCFG_ENABLE | POWERCFG_RDSM;
	retval = FUNC1(radio, POWERCFG);
	if (retval < 0)
		goto done;

	/* sysconfig 1 */
	radio->registers[SYSCONFIG1] = SYSCONFIG1_DE;
	retval = FUNC1(radio, SYSCONFIG1);
	if (retval < 0)
		goto done;

	/* sysconfig 2 */
	radio->registers[SYSCONFIG2] =
		(0x3f  << 8) |				/* SEEKTH */
		((band  << 6) & SYSCONFIG2_BAND)  |	/* BAND */
		((space << 4) & SYSCONFIG2_SPACE) |	/* SPACE */
		15;					/* VOLUME (max) */
	retval = FUNC1(radio, SYSCONFIG2);
	if (retval < 0)
		goto done;

	/* reset last channel */
	retval = FUNC0(radio,
		radio->registers[CHANNEL] & CHANNEL_CHAN);

done:
	return retval;
}