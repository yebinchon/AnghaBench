#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cafe_camera {int n_sbufs; int /*<<< orphan*/  sb_full; int /*<<< orphan*/  sb_avail; TYPE_1__* sb_bufs; } ;
struct TYPE_2__ {scalar_t__ mapcount; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cafe_camera *cam)
{
	int i;

	/*
	 * If any buffers are mapped, we cannot free them at all.
	 */
	for (i = 0; i < cam->n_sbufs; i++)
		if (cam->sb_bufs[i].mapcount > 0)
			return -EBUSY;
	/*
	 * OK, let's do it.
	 */
	for (i = 0; i < cam->n_sbufs; i++)
		FUNC2(cam->sb_bufs[i].buffer);
	cam->n_sbufs = 0;
	FUNC1(cam->sb_bufs);
	cam->sb_bufs = NULL;
	FUNC0(&cam->sb_avail);
	FUNC0(&cam->sb_full);
	return 0;
}