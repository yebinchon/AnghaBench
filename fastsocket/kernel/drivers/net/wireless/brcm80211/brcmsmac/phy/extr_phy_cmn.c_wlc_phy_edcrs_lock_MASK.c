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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int edcrs_threshold_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int) ; 

void FUNC1(struct brcms_phy_pub *pih, bool lock)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	pi->edcrs_threshold_lock = lock;

	FUNC0(pi, 0x22c, 0x46b);
	FUNC0(pi, 0x22d, 0x46b);
	FUNC0(pi, 0x22e, 0x3c0);
	FUNC0(pi, 0x22f, 0x3c0);
}