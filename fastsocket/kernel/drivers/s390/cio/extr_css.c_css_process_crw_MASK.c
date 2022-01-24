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
struct subchannel_id {int sch_no; int ssid; } ;
struct crw {int rsid; int /*<<< orphan*/  erc; int /*<<< orphan*/  anc; int /*<<< orphan*/  rsc; int /*<<< orphan*/  chn; int /*<<< orphan*/  oflw; int /*<<< orphan*/  slct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel_id,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel_id*) ; 

__attribute__((used)) static void FUNC4(struct crw *crw0, struct crw *crw1, int overflow)
{
	struct subchannel_id mchk_schid;

	if (overflow) {
		FUNC2();
		return;
	}
	FUNC0(2, "CRW0 reports slct=%d, oflw=%d, "
		      "chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\n",
		      crw0->slct, crw0->oflw, crw0->chn, crw0->rsc, crw0->anc,
		      crw0->erc, crw0->rsid);
	if (crw1)
		FUNC0(2, "CRW1 reports slct=%d, oflw=%d, "
			      "chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\n",
			      crw1->slct, crw1->oflw, crw1->chn, crw1->rsc,
			      crw1->anc, crw1->erc, crw1->rsid);
	FUNC3(&mchk_schid);
	mchk_schid.sch_no = crw0->rsid;
	if (crw1)
		mchk_schid.ssid = (crw1->rsid >> 8) & 3;

	/*
	 * Since we are always presented with IPI in the CRW, we have to
	 * use stsch() to find out if the subchannel in question has come
	 * or gone.
	 */
	FUNC1(mchk_schid, 0);
}