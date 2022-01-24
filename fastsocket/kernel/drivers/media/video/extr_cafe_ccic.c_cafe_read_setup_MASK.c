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
struct cafe_camera {scalar_t__ nbufs; int state; int /*<<< orphan*/  dev_lock; } ;
typedef  enum cafe_state { ____Placeholder_cafe_state } cafe_state ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*) ; 
 int FUNC2 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct cafe_camera*) ; 
 scalar_t__ FUNC5 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC6 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct cafe_camera *cam, enum cafe_state state)
{
	int ret;
	unsigned long flags;

	/*
	 * Configuration.  If we still don't have DMA buffers,
	 * make one last, desperate attempt.
	 */
	if (cam->nbufs == 0)
		if (FUNC0(cam, 0))
			return -ENOMEM;

	if (FUNC5(cam)) {
		FUNC1(cam);
		ret = FUNC2(cam);
		if (ret)
			return ret;
	}

	/*
	 * Turn it loose.
	 */
	FUNC7(&cam->dev_lock, flags);
	FUNC6(cam);
	FUNC3(cam);
	cam->state = state;
	FUNC4(cam);
	FUNC8(&cam->dev_lock, flags);
	return 0;
}