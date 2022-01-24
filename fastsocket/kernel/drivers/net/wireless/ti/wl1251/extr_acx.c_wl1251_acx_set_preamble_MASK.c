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
struct acx_preamble {int preamble; } ;
typedef  enum acx_preamble_type { ____Placeholder_acx_preamble_type } acx_preamble_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_PREAMBLE_TYPE ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_preamble*) ; 
 struct acx_preamble* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_preamble*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, enum acx_preamble_type preamble)
{
	struct acx_preamble *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx_set_preamble");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->preamble = preamble;

	ret = FUNC2(wl, ACX_PREAMBLE_TYPE, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("Setting of preamble failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}