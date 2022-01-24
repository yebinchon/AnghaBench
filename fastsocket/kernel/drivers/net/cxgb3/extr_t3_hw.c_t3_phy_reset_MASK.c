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
struct cphy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_CTRL1 ; 
 int /*<<< orphan*/  MDIO_CTRL1_LPOWER ; 
 unsigned int MDIO_CTRL1_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cphy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct cphy*,int,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC3(struct cphy *phy, int mmd, int wait)
{
	int err;
	unsigned int ctl;

	err = FUNC1(phy, mmd, MDIO_CTRL1, MDIO_CTRL1_LPOWER,
				  MDIO_CTRL1_RESET);
	if (err || !wait)
		return err;

	do {
		err = FUNC2(phy, mmd, MDIO_CTRL1, &ctl);
		if (err)
			return err;
		ctl &= MDIO_CTRL1_RESET;
		if (ctl)
			FUNC0(1);
	} while (ctl && --wait);

	return ctl ? -1 : 0;
}