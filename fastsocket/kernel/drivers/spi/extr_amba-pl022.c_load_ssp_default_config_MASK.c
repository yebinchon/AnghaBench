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
struct pl022 {int /*<<< orphan*/  virtbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR_ALL_INTERRUPTS ; 
 int /*<<< orphan*/  DEFAULT_SSP_REG_CPSR ; 
 int /*<<< orphan*/  DEFAULT_SSP_REG_CR0 ; 
 int /*<<< orphan*/  DEFAULT_SSP_REG_CR1 ; 
 int /*<<< orphan*/  DEFAULT_SSP_REG_DMACR ; 
 int /*<<< orphan*/  DISABLE_ALL_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pl022 *pl022)
{
	FUNC6(DEFAULT_SSP_REG_CR0, FUNC1(pl022->virtbase));
	FUNC6(DEFAULT_SSP_REG_CR1, FUNC2(pl022->virtbase));
	FUNC6(DEFAULT_SSP_REG_DMACR, FUNC3(pl022->virtbase));
	FUNC6(DEFAULT_SSP_REG_CPSR, FUNC0(pl022->virtbase));
	FUNC6(DISABLE_ALL_INTERRUPTS, FUNC5(pl022->virtbase));
	FUNC6(CLEAR_ALL_INTERRUPTS, FUNC4(pl022->virtbase));
}