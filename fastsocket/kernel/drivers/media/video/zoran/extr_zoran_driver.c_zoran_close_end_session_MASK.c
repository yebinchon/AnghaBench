#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ active; scalar_t__ allocated; } ;
struct zoran_fh {scalar_t__ overlay_active; scalar_t__ map_mode; TYPE_3__ buffers; struct zoran* zr; } ;
struct TYPE_5__ {scalar_t__ active; scalar_t__ allocated; } ;
struct TYPE_4__ {scalar_t__ active; scalar_t__ allocated; } ;
struct zoran {scalar_t__ overlay_active; TYPE_2__ jpg_buffers; int /*<<< orphan*/  spinlock; TYPE_1__ v4l_buffers; int /*<<< orphan*/ * overlay_mask; int /*<<< orphan*/  v4l_memgrab_active; scalar_t__ v4l_overlay_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUZ_MODE_IDLE ; 
 scalar_t__ ZORAN_FREE ; 
 scalar_t__ ZORAN_MAP_MODE_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct zoran_fh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct zoran_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct zoran*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zoran*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zoran*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct zoran_fh *fh)
{
	struct zoran *zr = fh->zr;

	/* overlay */
	if (fh->overlay_active != ZORAN_FREE) {
		fh->overlay_active = zr->overlay_active = ZORAN_FREE;
		zr->v4l_overlay_active = 0;
		if (!zr->v4l_memgrab_active)
			FUNC5(zr, 0);
		zr->overlay_mask = NULL;
	}

	if (fh->map_mode == ZORAN_MAP_MODE_RAW) {
		/* v4l capture */
		if (fh->buffers.active != ZORAN_FREE) {
			unsigned long flags;

			FUNC1(&zr->spinlock, flags);
			FUNC6(zr, 0);
			zr->v4l_buffers.allocated = 0;
			zr->v4l_buffers.active = fh->buffers.active = ZORAN_FREE;
			FUNC2(&zr->spinlock, flags);
		}

		/* v4l buffers */
		if (fh->buffers.allocated)
			FUNC3(fh);
	} else {
		/* jpg capture */
		if (fh->buffers.active != ZORAN_FREE) {
			FUNC4(zr, BUZ_MODE_IDLE);
			zr->jpg_buffers.allocated = 0;
			zr->jpg_buffers.active = fh->buffers.active = ZORAN_FREE;
		}

		/* jpg buffers */
		if (fh->buffers.allocated)
			FUNC0(fh);
	}
}