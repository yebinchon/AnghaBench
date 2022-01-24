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
struct wl1251 {int /*<<< orphan*/  default_key; } ;

/* Variables and functions */
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct wl1251 *wl)
{
	int ret;

	ret = FUNC1(wl);
	if (ret < 0) {
		FUNC2("couldn't set feature config");
		return ret;
	}

	ret = FUNC0(wl, wl->default_key);
	if (ret < 0) {
		FUNC2("couldn't set default key");
		return ret;
	}

	return 0;
}