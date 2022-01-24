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
typedef  int /*<<< orphan*/  u32 ;
struct cphy {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_INT_ENABLE ; 
 int /*<<< orphan*/  ELMER0_GP_BIT6 ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cphy *cphy)
{
	/* Disable PHY LASI interrupts. */
	FUNC0(cphy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_CTRL, 0x0);

	/* Disable Marvell interrupts through Elmer0. */
	if (FUNC1(cphy->adapter)) {
		u32 elmer;

		FUNC2(cphy->adapter, A_ELMER0_INT_ENABLE, &elmer);
		elmer &= ~ELMER0_GP_BIT6;
		FUNC3(cphy->adapter, A_ELMER0_INT_ENABLE, elmer);
	}
	return 0;
}