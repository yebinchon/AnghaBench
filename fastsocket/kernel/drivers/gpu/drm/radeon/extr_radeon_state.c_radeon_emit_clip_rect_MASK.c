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
struct drm_clip_rect {int x1; int y1; int x2; int y2; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  RADEON_RE_TOP_LEFT ; 
 int /*<<< orphan*/  RADEON_RE_WIDTH_HEIGHT ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void FUNC5(drm_radeon_private_t * dev_priv,
				  struct drm_clip_rect * box)
{
	RING_LOCALS;

	FUNC3("   box:  x1=%d y1=%d  x2=%d y2=%d\n",
		  box->x1, box->y1, box->x2, box->y2);

	FUNC1(4);
	FUNC4(FUNC2(RADEON_RE_TOP_LEFT, 0));
	FUNC4((box->y1 << 16) | box->x1);
	FUNC4(FUNC2(RADEON_RE_WIDTH_HEIGHT, 0));
	FUNC4(((box->y2 - 1) << 16) | (box->x2 - 1));
	FUNC0();
}