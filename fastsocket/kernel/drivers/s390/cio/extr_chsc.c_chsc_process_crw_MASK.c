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
struct crw {int /*<<< orphan*/  rsid; int /*<<< orphan*/  erc; int /*<<< orphan*/  anc; int /*<<< orphan*/  rsc; int /*<<< orphan*/  chn; int /*<<< orphan*/  oflw; int /*<<< orphan*/  slct; } ;
struct TYPE_4__ {int code; } ;
struct TYPE_3__ {int length; int code; } ;
struct chsc_sei_area {int flags; TYPE_2__ response; TYPE_1__ request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC3 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct chsc_sei_area*,int /*<<< orphan*/ ,int) ; 
 struct chsc_sei_area* sei_page ; 

__attribute__((used)) static void FUNC6(struct crw *crw0, struct crw *crw1, int overflow)
{
	struct chsc_sei_area *sei_area;

	if (overflow) {
		FUNC4();
		return;
	}
	FUNC0(2, "CRW reports slct=%d, oflw=%d, "
		      "chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\n",
		      crw0->slct, crw0->oflw, crw0->chn, crw0->rsc, crw0->anc,
		      crw0->erc, crw0->rsid);
	if (!sei_page)
		return;
	/* Access to sei_page is serialized through machine check handler
	 * thread, so no need for locking. */
	sei_area = sei_page;

	FUNC1(2, "prcss");
	do {
		FUNC5(sei_area, 0, sizeof(*sei_area));
		sei_area->request.length = 0x0010;
		sei_area->request.code = 0x000e;
		if (FUNC2(sei_area))
			break;

		if (sei_area->response.code == 0x0001) {
			FUNC0(4, "chsc: sei successful\n");
			FUNC3(sei_area);
		} else {
			FUNC0(2, "chsc: sei failed (rc=%04x)\n",
				      sei_area->response.code);
			break;
		}
	} while (sei_area->flags & 0x80);
}