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
typedef  int u32 ;
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int ELPCTRL_WAKE_UP ; 
 int ELPCTRL_WLAN_READY ; 
 int /*<<< orphan*/  HW_ACCESS_ELP_CTRL_REG_ADDR ; 
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1251*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct wl1251 *wl)
{
	u32 elp_reg;

	elp_reg = ELPCTRL_WAKE_UP;
	FUNC2(wl, HW_ACCESS_ELP_CTRL_REG_ADDR, elp_reg);
	elp_reg = FUNC0(wl, HW_ACCESS_ELP_CTRL_REG_ADDR);

	if (!(elp_reg & ELPCTRL_WLAN_READY))
		FUNC1("WLAN not ready");
}