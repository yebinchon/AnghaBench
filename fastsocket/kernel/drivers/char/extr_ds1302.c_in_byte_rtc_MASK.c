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
 scalar_t__ PLD_RTCCR ; 
 scalar_t__ PLD_RTCRDDATA ; 
 scalar_t__ PLD_RTCRSTODT ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

__attribute__((used)) static unsigned char
FUNC2(unsigned int reg_addr)
{
	unsigned char retval;

	//RST H
	FUNC1(0x0001,(unsigned long)PLD_RTCRSTODT);
	//write data
	FUNC1((reg_addr&0xff),(unsigned long)PLD_RTCRDDATA);
	//RE
	FUNC1(0x0001,(unsigned long)PLD_RTCCR);
	//wait
	while(FUNC0((unsigned long)PLD_RTCCR));

	//read data
	retval=(FUNC0((unsigned long)PLD_RTCRDDATA) & 0xff00)>>8;

	//RST L
	FUNC1(0x0000,(unsigned long)PLD_RTCRSTODT);

	return retval;
}