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
typedef  int uint32_t ;
struct pxa27x_keypad_platform_data {scalar_t__ enable_rotary1; scalar_t__ enable_rotary0; } ;
struct pxa27x_keypad {struct pxa27x_keypad_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_KPREC ; 
 int /*<<< orphan*/  KPREC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa27x_keypad*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct pxa27x_keypad *keypad)
{
	struct pxa27x_keypad_platform_data *pdata = keypad->pdata;
	uint32_t kprec;

	/* read and reset to default count value */
	kprec = FUNC0(KPREC);
	FUNC1(KPREC, DEFAULT_KPREC);

	if (pdata->enable_rotary0)
		FUNC2(keypad, 0, FUNC3(kprec));

	if (pdata->enable_rotary1)
		FUNC2(keypad, 1, FUNC3(kprec >> 16));
}