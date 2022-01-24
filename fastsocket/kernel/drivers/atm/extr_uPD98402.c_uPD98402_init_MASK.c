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
struct atm_dev {int /*<<< orphan*/ * phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  uPD98402_ops ; 

int FUNC1(struct atm_dev *dev)
{
FUNC0("phy_init\n");
	dev->phy = &uPD98402_ops;
	return 0;
}