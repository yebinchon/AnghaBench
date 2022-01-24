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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int BMSR_ANEGCOMPLETE ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct phy_device *phydev)
{
	int retval;

	retval = FUNC0(phydev, MII_BMSR);

	return (retval < 0) ? retval : (retval & BMSR_ANEGCOMPLETE);
}