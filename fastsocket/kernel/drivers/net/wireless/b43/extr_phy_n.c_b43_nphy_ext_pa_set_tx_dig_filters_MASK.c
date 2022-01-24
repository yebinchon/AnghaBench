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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** tbl_tx_filter_coef_rev4 ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	int i;
	for (i = 0; i < 15; i++)
		FUNC1(dev, FUNC0(0x2C5 + i),
				tbl_tx_filter_coef_rev4[2][i]);
}