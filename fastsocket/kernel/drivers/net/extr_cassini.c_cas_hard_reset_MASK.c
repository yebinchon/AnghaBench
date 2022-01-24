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
struct cas {int /*<<< orphan*/  pdev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIM_LOCAL_DEV_SOFT_0 ; 
 scalar_t__ REG_BIM_LOCAL_DEV_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct cas *cp)
{
	FUNC2(BIM_LOCAL_DEV_SOFT_0, cp->regs + REG_BIM_LOCAL_DEV_EN);
	FUNC1(20);
	FUNC0(cp->pdev);
}