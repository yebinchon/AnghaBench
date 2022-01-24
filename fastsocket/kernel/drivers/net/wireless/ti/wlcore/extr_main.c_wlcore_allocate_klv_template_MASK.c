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
struct wl1271 {int /*<<< orphan*/  klv_templates_map; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ WLCORE_MAX_KLV_TEMPLATES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct wl1271 *wl, u8 *idx)
{
	u8 policy = FUNC1(wl->klv_templates_map,
					WLCORE_MAX_KLV_TEMPLATES);
	if (policy >= WLCORE_MAX_KLV_TEMPLATES)
		return -EBUSY;

	FUNC0(policy, wl->klv_templates_map);
	*idx = policy;
	return 0;
}