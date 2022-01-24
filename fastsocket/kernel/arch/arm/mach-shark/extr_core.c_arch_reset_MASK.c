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
 short FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (short,int) ; 

void FUNC3(char mode, const char *cmd)
{
        short temp;
        FUNC1();
        /* Reset the Machine via pc[3] of the sequoia chipset */
        FUNC2(0x09,0x24);
        temp=FUNC0(0x26);
        temp = temp | (1<<3) | (1<<10);
        FUNC2(0x09,0x24);
        FUNC2(temp,0x26);
}