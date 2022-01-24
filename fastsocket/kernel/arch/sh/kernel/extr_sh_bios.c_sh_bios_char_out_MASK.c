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
 int /*<<< orphan*/  BIOS_CALL_CHAR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(char ch)
{
	FUNC0(BIOS_CALL_CHAR_OUT, ch, 0, 0, 0);
}