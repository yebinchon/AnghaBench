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
 int /*<<< orphan*/  AT91_PIN_PA18 ; 
 int /*<<< orphan*/  AT91_PIN_PA19 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(int on)
{
	if (on) {
		FUNC0(AT91_PIN_PA18, 1); /* CANRXEN */
		FUNC0(AT91_PIN_PA19, 0); /* CANRS */
	} else {
		FUNC0(AT91_PIN_PA18, 0); /* CANRXEN */
		FUNC0(AT91_PIN_PA19, 1); /* CANRS */
	}
}