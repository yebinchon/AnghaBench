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
 int /*<<< orphan*/  CX23888_IR_REFCLK_FREQ ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC1(unsigned int divider)
{
	return FUNC0(CX23888_IR_REFCLK_FREQ, (divider + 1) * 16);
}