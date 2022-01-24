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
 int /*<<< orphan*/  A_XGM_XAUI_IMP ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 unsigned int F_CALBUSY ; 
 unsigned int F_XGM_CALFAULT ; 
 int /*<<< orphan*/  F_XGM_IMPSETUPDATE ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 unsigned int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct adapter*) ; 

__attribute__((used)) static int FUNC10(struct adapter *adapter)
{
	if (FUNC9(adapter)) {
		unsigned int v, i;

		for (i = 0; i < 5; ++i) {
			FUNC8(adapter, A_XGM_XAUI_IMP, 0);
			FUNC6(adapter, A_XGM_XAUI_IMP);
			FUNC5(1);
			v = FUNC6(adapter, A_XGM_XAUI_IMP);
			if (!(v & (F_XGM_CALFAULT | F_CALBUSY))) {
				FUNC8(adapter, A_XGM_XAUI_IMP,
					     FUNC4(FUNC1(v) >> 2));
				return 0;
			}
		}
		FUNC0(adapter, "MAC calibration failed\n");
		return -1;
	} else {
		FUNC8(adapter, A_XGM_RGMII_IMP,
			     FUNC2(2) | FUNC3(3));
		FUNC7(adapter, A_XGM_RGMII_IMP, F_XGM_IMPSETUPDATE,
				 F_XGM_IMPSETUPDATE);
	}
	return 0;
}