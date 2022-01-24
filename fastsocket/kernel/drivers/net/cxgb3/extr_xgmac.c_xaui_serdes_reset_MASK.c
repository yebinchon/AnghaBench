#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct cmac {scalar_t__ offset; struct adapter* adapter; } ;
struct TYPE_3__ {unsigned int const* xauicfg; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int FUNC0 (unsigned int const*) ; 
 scalar_t__ A_XGM_SERDES_CTRL0 ; 
#define  F_PWRDN0 137 
#define  F_PWRDN1 136 
#define  F_PWRDN2 135 
#define  F_PWRDN3 134 
#define  F_RESET0 133 
#define  F_RESET1 132 
#define  F_RESET2 131 
#define  F_RESET3 130 
#define  F_RESETPLL01 129 
#define  F_RESETPLL23 128 
 size_t FUNC1 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__,unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct cmac *mac)
{
	static const unsigned int clear[] = {
		F_PWRDN0 | F_PWRDN1, F_RESETPLL01, F_RESET0 | F_RESET1,
		F_PWRDN2 | F_PWRDN3, F_RESETPLL23, F_RESET2 | F_RESET3
	};

	int i;
	struct adapter *adap = mac->adapter;
	u32 ctrl = A_XGM_SERDES_CTRL0 + mac->offset;

	FUNC4(adap, ctrl, adap->params.vpd.xauicfg[FUNC1(mac)] |
		     F_RESET3 | F_RESET2 | F_RESET1 | F_RESET0 |
		     F_PWRDN3 | F_PWRDN2 | F_PWRDN1 | F_PWRDN0 |
		     F_RESETPLL23 | F_RESETPLL01);
	FUNC2(adap, ctrl);
	FUNC5(15);

	for (i = 0; i < FUNC0(clear); i++) {
		FUNC3(adap, ctrl, clear[i], 0);
		FUNC5(15);
	}
}