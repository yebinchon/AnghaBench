#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  tail; } ;
struct TYPE_6__ {TYPE_1__ ring; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RADEON_CP_RB_RPTR ; 
 int /*<<< orphan*/  RADEON_CP_RB_WPTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(drm_radeon_private_t * dev_priv)
{
	u32 cur_read_ptr;
	FUNC0("\n");

	cur_read_ptr = FUNC1(RADEON_CP_RB_RPTR);
	FUNC2(RADEON_CP_RB_WPTR, cur_read_ptr);
	FUNC3(dev_priv, cur_read_ptr);
	dev_priv->ring.tail = cur_read_ptr;
}