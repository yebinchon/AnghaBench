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
typedef  int u32 ;
struct cphy {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_INT_ENABLE ; 
 int ELMER0_GP_BIT1 ; 
 int ELMER0_GP_BIT2 ; 
 int ELMER0_GP_BIT3 ; 
 int ELMER0_GP_BIT4 ; 
 int /*<<< orphan*/  MV88E1XXX_INTERRUPT_ENABLE_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct cphy *cphy)
{
	/* Disable all phy interrupts. */
	(void) FUNC1(cphy, MV88E1XXX_INTERRUPT_ENABLE_REGISTER, 0);

	/* Disable Marvell interrupts through Elmer0. */
	if (FUNC2(cphy->adapter)) {
		u32 elmer;

		FUNC3(cphy->adapter, A_ELMER0_INT_ENABLE, &elmer);
		elmer &= ~ELMER0_GP_BIT1;
		if (FUNC0(cphy->adapter))
		    elmer &= ~(ELMER0_GP_BIT2|ELMER0_GP_BIT3|ELMER0_GP_BIT4);
		FUNC4(cphy->adapter, A_ELMER0_INT_ENABLE, elmer);
	}
	return 0;
}