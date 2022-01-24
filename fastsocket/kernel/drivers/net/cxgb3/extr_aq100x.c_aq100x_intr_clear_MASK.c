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
 int /*<<< orphan*/  AQ_IFLAG_GLOBAL ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int /*<<< orphan*/  MDIO_MMD_VEND1 ; 
 int /*<<< orphan*/  MDIO_STAT1 ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC1(struct cphy *phy)
{
	unsigned int v;

	FUNC0(phy, MDIO_MMD_VEND1, AQ_IFLAG_GLOBAL, &v);
	FUNC0(phy, MDIO_MMD_PMAPMD, MDIO_STAT1, &v);

	return 0;
}