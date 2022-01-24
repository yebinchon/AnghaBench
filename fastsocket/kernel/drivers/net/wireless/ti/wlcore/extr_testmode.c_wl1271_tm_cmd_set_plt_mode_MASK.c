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
struct wl1271 {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TESTMODE ; 
 int EINVAL ; 
#define  PLT_FEM_DETECT 130 
#define  PLT_OFF 129 
#define  PLT_ON 128 
 size_t WL1271_TM_ATTR_PLT_MODE ; 
 int FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct wl1271*,int const) ; 
 int FUNC3 (struct wl1271*) ; 
 int FUNC4 (struct wl1271*,struct nlattr**) ; 

__attribute__((used)) static int FUNC5(struct wl1271 *wl, struct nlattr *tb[])
{
	u32 val;
	int ret;

	FUNC1(DEBUG_TESTMODE, "testmode cmd set plt mode");

	if (!tb[WL1271_TM_ATTR_PLT_MODE])
		return -EINVAL;

	val = FUNC0(tb[WL1271_TM_ATTR_PLT_MODE]);

	switch (val) {
	case PLT_OFF:
		ret = FUNC3(wl);
		break;
	case PLT_ON:
		ret = FUNC2(wl, PLT_ON);
		break;
	case PLT_FEM_DETECT:
		ret = FUNC4(wl, tb);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}