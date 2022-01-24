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
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  R600_IT_SURFACE_SYNC ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void
FUNC5(drm_radeon_private_t *dev_priv,
		    u32 sync_type, u32 size, u64 mc_addr)
{
	u32 cp_coher_size;
	RING_LOCALS;
	FUNC3("\n");

	if (size == 0xffffffff)
		cp_coher_size = 0xffffffff;
	else
		cp_coher_size = ((size + 255) >> 8);

	FUNC1(5);
	FUNC4(FUNC2(R600_IT_SURFACE_SYNC, 3));
	FUNC4(sync_type);
	FUNC4(cp_coher_size);
	FUNC4((mc_addr >> 8));
	FUNC4(10); /* poll interval */
	FUNC0();
}