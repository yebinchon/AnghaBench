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
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static unsigned char FUNC2(int iRegNum)
{
	unsigned char iVal;

	FUNC1(0x87, 0x2e);
	FUNC1(0x87, 0x2e);
	FUNC1(iRegNum, 0x2e);
	iVal = FUNC0(0x2f);
	FUNC1(0xaa, 0x2e);

	return iVal;
}