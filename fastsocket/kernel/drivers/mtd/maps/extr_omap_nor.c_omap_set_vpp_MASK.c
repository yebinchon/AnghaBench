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
struct map_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMIFS_CONFIG ; 
 int /*<<< orphan*/  OMAP_EMIFS_CONFIG_WP ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct map_info *map, int enable)
{
	static int	count;
	u32 l;

	if (FUNC0()) {
		if (enable) {
			if (count++ == 0) {
				l = FUNC1(EMIFS_CONFIG);
				l |= OMAP_EMIFS_CONFIG_WP;
				FUNC2(l, EMIFS_CONFIG);
			}
		} else {
			if (count && (--count == 0)) {
				l = FUNC1(EMIFS_CONFIG);
				l &= ~OMAP_EMIFS_CONFIG_WP;
				FUNC2(l, EMIFS_CONFIG);
			}
		}
	}
}