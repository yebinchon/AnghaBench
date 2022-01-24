#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sb0; int sb1; int sb2; int sb3; int sb4; int sb5; int sb6; int sb7; } ;
union encvaluetype {int value; TYPE_1__ bits; } ;

/* Variables and functions */
 int C6XDIGIO_TIME_OUT ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 

__attribute__((used)) static int FUNC2(unsigned long baseAddr, unsigned channel)
{
	unsigned ppcmd;
	union encvaluetype enc;
	int timeout = 0;
	int tmp;

	/* printk("Inside C6X_encInput\n"); */

	enc.value = 0;
	if (channel == 0) {
		ppcmd = 0x48;
	} else {
		ppcmd = 0x50;
	}
	FUNC1(baseAddr, ppcmd);
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}

	enc.bits.sb0 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd + 0x4);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0x80) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}
	enc.bits.sb1 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}
	enc.bits.sb2 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd + 0x4);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0x80) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}
	enc.bits.sb3 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}
	enc.bits.sb4 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd + 0x4);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0x80) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}
	enc.bits.sb5 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0x0) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}
	enc.bits.sb6 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd + 0x4);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0x80) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}
	enc.bits.sb7 = ((FUNC0(baseAddr + 1) >> 3) & 0x7);
	FUNC1(baseAddr, ppcmd);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0x0) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}

	FUNC1(baseAddr, 0x0);
	timeout = 0;
	tmp = FUNC0(baseAddr + 1);
	while (((tmp & 0x80) == 0x80) && (timeout < C6XDIGIO_TIME_OUT)) {
		tmp = FUNC0(baseAddr + 1);
		timeout++;
	}

	return enc.value ^ 0x800000;
}