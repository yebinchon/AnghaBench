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
 int /*<<< orphan*/  F0 ; 
 int /*<<< orphan*/  F1 ; 
 int /*<<< orphan*/  FC ; 
 int /*<<< orphan*/  PCCR ; 
 int /*<<< orphan*/  PCCR_C ; 
 int /*<<< orphan*/  PCCR_R ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Reset all counter and disable/clear all interrupts */
	FUNC1(PCCR, (FUNC0(PCCR_R)
				| FUNC0(PCCR_C)
				| FUNC0(FC)
				| FUNC0(F0)
				| FUNC0(F1)));
}