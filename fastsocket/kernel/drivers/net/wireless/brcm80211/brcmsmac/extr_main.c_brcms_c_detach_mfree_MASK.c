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
struct brcms_c_info {struct brcms_c_info* hw; struct brcms_c_info** bandstate; struct brcms_c_info* corestate; struct brcms_c_info* macstat_snapshot; struct brcms_c_info* stf; struct brcms_c_info* protection; struct brcms_c_info* default_bss; struct brcms_c_info* modulecb; struct brcms_c_info* pub; int /*<<< orphan*/  bsscfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*) ; 

__attribute__((used)) static void FUNC2(struct brcms_c_info *wlc)
{
	if (wlc == NULL)
		return;

	FUNC0(wlc->bsscfg);
	FUNC1(wlc->pub);
	FUNC1(wlc->modulecb);
	FUNC1(wlc->default_bss);
	FUNC1(wlc->protection);
	FUNC1(wlc->stf);
	FUNC1(wlc->bandstate[0]);
	FUNC1(wlc->corestate->macstat_snapshot);
	FUNC1(wlc->corestate);
	FUNC1(wlc->hw->bandstate[0]);
	FUNC1(wlc->hw);

	/* free the wlc */
	FUNC1(wlc);
	wlc = NULL;
}