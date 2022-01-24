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
struct wl1251_acx_mem_map {int dummy; } ;
struct wl1251 {int /*<<< orphan*/ * target_mem_map; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1251 *wl)
{
	int ret;

	ret = FUNC2(wl);
	if (ret < 0)
		return ret;

	wl->target_mem_map = FUNC1(sizeof(struct wl1251_acx_mem_map),
					  GFP_KERNEL);
	if (!wl->target_mem_map) {
		FUNC4("couldn't allocate target memory map");
		return -ENOMEM;
	}

	/* we now ask for the firmware built memory map */
	ret = FUNC3(wl, wl->target_mem_map,
				 sizeof(struct wl1251_acx_mem_map));
	if (ret < 0) {
		FUNC4("couldn't retrieve firmware memory map");
		FUNC0(wl->target_mem_map);
		wl->target_mem_map = NULL;
		return ret;
	}

	return 0;
}