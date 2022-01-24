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
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int dummy; } ;
struct acx_aid {int /*<<< orphan*/  aid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_AID ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_aid*) ; 
 struct acx_aid* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_aid*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, u16 aid)
{
	struct acx_aid *acx_aid;
	int ret;

	FUNC3(DEBUG_ACX, "acx aid");

	acx_aid = FUNC1(sizeof(*acx_aid), GFP_KERNEL);
	if (!acx_aid) {
		ret = -ENOMEM;
		goto out;
	}

	acx_aid->aid = aid;

	ret = FUNC2(wl, ACX_AID, acx_aid, sizeof(*acx_aid));
	if (ret < 0) {
		FUNC4("failed to set aid: %d", ret);
		goto out;
	}

out:
	FUNC0(acx_aid);
	return ret;
}