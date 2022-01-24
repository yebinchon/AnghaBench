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
struct ldc_version {scalar_t__ major; scalar_t__ minor; } ;
struct ldc_channel {scalar_t__ hs_state; struct ldc_version ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS ; 
 scalar_t__ LDC_HS_GOTVERS ; 
 scalar_t__ LDC_HS_OPEN ; 
 struct ldc_version* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ldc_version*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ldc_channel*,struct ldc_version*) ; 
 int FUNC5 (struct ldc_channel*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ldc_channel *lp, struct ldc_version *vp)
{
	struct ldc_version *vap;
	int err;

	FUNC2(HS, "GOT VERSION INFO major[%x] minor[%x]\n",
	       vp->major, vp->minor);

	if (lp->hs_state == LDC_HS_GOTVERS) {
		lp->hs_state = LDC_HS_OPEN;
		FUNC3(&lp->ver, 0, sizeof(lp->ver));
	}

	vap = FUNC0(vp->major);
	if (!vap) {
		err = FUNC5(lp, 0, 0);
	} else if (vap->major != vp->major) {
		err = FUNC5(lp, vap->major, vap->minor);
	} else {
		struct ldc_version ver = *vp;
		if (ver.minor > vap->minor)
			ver.minor = vap->minor;
		err = FUNC4(lp, &ver);
		if (!err) {
			lp->ver = ver;
			lp->hs_state = LDC_HS_GOTVERS;
		}
	}
	if (err)
		return FUNC1(lp);

	return 0;
}