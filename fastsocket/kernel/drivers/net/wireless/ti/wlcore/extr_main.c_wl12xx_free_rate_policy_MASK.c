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
typedef  scalar_t__ u8 ;
struct wl1271 {int /*<<< orphan*/  rate_policies_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WL12XX_MAX_RATE_POLICIES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl1271 *wl, u8 *idx)
{
	if (FUNC0(*idx >= WL12XX_MAX_RATE_POLICIES))
		return;

	FUNC1(*idx, wl->rate_policies_map);
	*idx = WL12XX_MAX_RATE_POLICIES;
}