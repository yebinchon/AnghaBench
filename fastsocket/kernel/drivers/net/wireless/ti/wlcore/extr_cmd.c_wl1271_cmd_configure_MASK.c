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
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wl1271*,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 

int FUNC1(struct wl1271 *wl, u16 id, void *buf, size_t len)
{
	int ret = FUNC0(wl, id, buf, len, 0);

	if (ret < 0)
		return ret;
	return 0;
}