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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_XGM_RGMII_IMP ; 
 int F_CALRESET ; 
 int F_CALUPDATE ; 
 int F_XGM_IMPSETUPDATE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 

__attribute__((used)) static void FUNC5(struct adapter *adapter)
{
	if (!FUNC4(adapter)) {
		FUNC3(adapter, A_XGM_RGMII_IMP, F_CALRESET |
			     F_CALUPDATE | FUNC0(2) | FUNC1(3));
		FUNC2(adapter, A_XGM_RGMII_IMP, F_CALRESET, 0);
		FUNC2(adapter, A_XGM_RGMII_IMP, 0,
				 F_XGM_IMPSETUPDATE);
		FUNC2(adapter, A_XGM_RGMII_IMP, F_XGM_IMPSETUPDATE,
				 0);
		FUNC2(adapter, A_XGM_RGMII_IMP, F_CALUPDATE, 0);
		FUNC2(adapter, A_XGM_RGMII_IMP, 0, F_CALUPDATE);
	}
}