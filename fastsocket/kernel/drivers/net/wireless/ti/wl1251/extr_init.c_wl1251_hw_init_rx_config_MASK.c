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
typedef  int /*<<< orphan*/  u32 ;
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_MSDU_LIFETIME_DEF ; 
 int FUNC0 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wl1251*,int /*<<< orphan*/ ) ; 

int FUNC2(struct wl1251 *wl, u32 config, u32 filter)
{
	int ret;

	ret = FUNC1(wl, RX_MSDU_LIFETIME_DEF);
	if (ret < 0)
		return ret;

	ret = FUNC0(wl, config, filter);
	if (ret < 0)
		return ret;

	return 0;
}