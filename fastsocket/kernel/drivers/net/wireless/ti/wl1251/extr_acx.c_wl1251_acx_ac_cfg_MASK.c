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
typedef  void* u8 ;
typedef  void* u16 ;
struct wl1251_acx_ac_cfg {void* txop_limit; void* aifsn; void* cw_max; void* cw_min; void* ac; } ;
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_AC_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1251_acx_ac_cfg*) ; 
 struct wl1251_acx_ac_cfg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_acx_ac_cfg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, u8 ac, u8 cw_min, u16 cw_max,
		      u8 aifs, u16 txop)
{
	struct wl1251_acx_ac_cfg *acx;
	int ret = 0;

	FUNC3(DEBUG_ACX, "acx ac cfg %d cw_ming %d cw_max %d "
		     "aifs %d txop %d", ac, cw_min, cw_max, aifs, txop);

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);

	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->ac = ac;
	acx->cw_min = cw_min;
	acx->cw_max = cw_max;
	acx->aifsn = aifs;
	acx->txop_limit = txop;

	ret = FUNC2(wl, ACX_AC_CFG, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("acx ac cfg failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}