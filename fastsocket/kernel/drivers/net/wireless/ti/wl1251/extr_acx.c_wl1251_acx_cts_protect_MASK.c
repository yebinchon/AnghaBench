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
struct wl1251 {int dummy; } ;
struct acx_ctsprotect {int ctsprotect; } ;
typedef  enum acx_ctsprotect_type { ____Placeholder_acx_ctsprotect_type } acx_ctsprotect_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CTS_PROTECTION ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_ctsprotect*) ; 
 struct acx_ctsprotect* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_ctsprotect*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl,
			   enum acx_ctsprotect_type ctsprotect)
{
	struct acx_ctsprotect *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx_set_ctsprotect");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->ctsprotect = ctsprotect;

	ret = FUNC2(wl, ACX_CTS_PROTECTION, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("Setting of ctsprotect failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}