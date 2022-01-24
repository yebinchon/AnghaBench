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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_bo {int /*<<< orphan*/  pitch; int /*<<< orphan*/  tiling_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_bo*) ; 

void FUNC2(struct radeon_bo *bo,
				uint32_t *tiling_flags,
				uint32_t *pitch)
{
	FUNC0(!FUNC1(bo));
	if (tiling_flags)
		*tiling_flags = bo->tiling_flags;
	if (pitch)
		*pitch = bo->pitch;
}