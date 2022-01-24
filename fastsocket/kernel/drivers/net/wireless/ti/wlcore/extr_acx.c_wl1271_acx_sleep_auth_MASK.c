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
struct wl1271 {void* sleep_auth; } ;
struct acx_sleep_auth {void* sleep_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_SLEEP_AUTH ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_sleep_auth*) ; 
 struct acx_sleep_auth* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct acx_sleep_auth*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,int) ; 

int FUNC5(struct wl1271 *wl, u8 sleep_auth)
{
	struct acx_sleep_auth *auth;
	int ret;

	FUNC3(DEBUG_ACX, "acx sleep auth %d", sleep_auth);

	auth = FUNC1(sizeof(*auth), GFP_KERNEL);
	if (!auth) {
		ret = -ENOMEM;
		goto out;
	}

	auth->sleep_auth = sleep_auth;

	ret = FUNC2(wl, ACX_SLEEP_AUTH, auth, sizeof(*auth));
	if (ret < 0) {
		FUNC4("could not configure sleep_auth to %d: %d",
			     sleep_auth, ret);
		goto out;
	}

	wl->sleep_auth = sleep_auth;
out:
	FUNC0(auth);
	return ret;
}