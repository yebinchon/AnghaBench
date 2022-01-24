#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ssb_sprom {char* alpha2; } ;
struct brcms_pub {int /*<<< orphan*/  srom_ccode; } ;
struct brcms_cm_info {TYPE_5__* world_regd; struct brcms_c_info* wlc; struct brcms_pub* pub; } ;
struct brcms_c_info {int /*<<< orphan*/  autocountry_default; int /*<<< orphan*/  country_default; struct brcms_pub* pub; struct brcms_cm_info* cmi; TYPE_3__* hw; } ;
struct TYPE_12__ {TYPE_4__* regdomain; } ;
struct TYPE_11__ {char* alpha2; } ;
struct TYPE_10__ {TYPE_2__* d11core; } ;
struct TYPE_9__ {TYPE_1__* bus; } ;
struct TYPE_8__ {struct ssb_sprom sprom; } ;

/* Variables and functions */
 int BRCM_CNTRY_BUF_SZ ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_cm_info*,TYPE_5__*) ; 
 TYPE_5__* FUNC2 () ; 
 TYPE_5__* FUNC3 (char const*,int) ; 
 struct brcms_cm_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

struct brcms_cm_info *FUNC6(struct brcms_c_info *wlc)
{
	struct brcms_cm_info *wlc_cm;
	struct brcms_pub *pub = wlc->pub;
	struct ssb_sprom *sprom = &wlc->hw->d11core->bus->sprom;
	const char *ccode = sprom->alpha2;
	int ccode_len = sizeof(sprom->alpha2);

	wlc_cm = FUNC4(sizeof(struct brcms_cm_info), GFP_ATOMIC);
	if (wlc_cm == NULL)
		return NULL;
	wlc_cm->pub = pub;
	wlc_cm->wlc = wlc;
	wlc->cmi = wlc_cm;

	/* store the country code for passing up as a regulatory hint */
	wlc_cm->world_regd = FUNC3(ccode, ccode_len);
	if (FUNC0(ccode))
		FUNC5(wlc->pub->srom_ccode, ccode, ccode_len);

	/*
	 * If no custom world domain is found in the SROM, use the
	 * default "X2" domain.
	 */
	if (!wlc_cm->world_regd) {
		wlc_cm->world_regd = FUNC2();
		ccode = wlc_cm->world_regd->regdomain->alpha2;
		ccode_len = BRCM_CNTRY_BUF_SZ - 1;
	}

	/* save default country for exiting 11d regulatory mode */
	FUNC5(wlc->country_default, ccode, ccode_len);

	/* initialize autocountry_default to driver default */
	FUNC5(wlc->autocountry_default, ccode, ccode_len);

	FUNC1(wlc_cm, wlc_cm->world_regd);

	return wlc_cm;
}