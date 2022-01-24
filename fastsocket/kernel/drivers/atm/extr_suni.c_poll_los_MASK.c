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
struct atm_dev {int /*<<< orphan*/  signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_PHY_SIG_FOUND ; 
 int /*<<< orphan*/  ATM_PHY_SIG_LOST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSOP_SIS ; 
 int SUNI_RSOP_SIS_LOSV ; 

__attribute__((used)) static void FUNC1(struct atm_dev *dev)
{
	dev->signal = FUNC0(RSOP_SIS) & SUNI_RSOP_SIS_LOSV ? ATM_PHY_SIG_LOST :
	  ATM_PHY_SIG_FOUND;
}