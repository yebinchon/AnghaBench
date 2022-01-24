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
 unsigned char RS5C313_CNTBIT_AD ; 
 unsigned char RS5C313_CNTBIT_DT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 

__attribute__((used)) static void FUNC1(unsigned char addr, unsigned char data)
{
	data &= 0x0f;
	FUNC0(addr | RS5C313_CNTBIT_AD);
	FUNC0(data | RS5C313_CNTBIT_DT);
	return;
}