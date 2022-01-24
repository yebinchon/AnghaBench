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
struct brcms_c_info {struct brcms_bss_cfg* bsscfg; } ;
struct brcms_bss_cfg {int /*<<< orphan*/  BSS; scalar_t__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*,struct brcms_bss_cfg*,int) ; 

void FUNC1(struct brcms_c_info *wlc, bool suspend)
{
	struct brcms_bss_cfg *bsscfg = wlc->bsscfg;

	/* update AP or IBSS probe responses */
	if (bsscfg->up && !bsscfg->BSS)
		FUNC0(wlc, bsscfg, suspend);
}