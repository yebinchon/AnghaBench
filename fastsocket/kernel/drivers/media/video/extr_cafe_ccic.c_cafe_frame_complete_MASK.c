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
struct cafe_camera {int next_buf; int state; int /*<<< orphan*/  s_tasklet; int /*<<< orphan*/  iowait; int /*<<< orphan*/  nbufs; int /*<<< orphan*/  specframes; scalar_t__ sequence; scalar_t__* buf_seq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_DMA_ACTIVE ; 
 int S_IDLE ; 
#define  S_SINGLEREAD 130 
#define  S_SPECREAD 129 
#define  S_STREAMING 128 
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct cafe_camera *cam, int frame)
{
	/*
	 * Basic frame housekeeping.
	 */
	if (FUNC7(frame, &cam->flags) && FUNC4())
		FUNC2(cam, "Frame overrun on %d, frames lost\n", frame);
	FUNC5(frame, &cam->flags);
	FUNC3(CF_DMA_ACTIVE, &cam->flags);
	if (cam->next_buf < 0)
		cam->next_buf = frame;
	cam->buf_seq[frame] = ++(cam->sequence);

	switch (cam->state) {
	/*
	 * If in single read mode, try going speculative.
	 */
	    case S_SINGLEREAD:
		cam->state = S_SPECREAD;
		cam->specframes = 0;
		FUNC8(&cam->iowait);
		break;

	/*
	 * If we are already doing speculative reads, and nobody is
	 * reading them, just stop.
	 */
	    case S_SPECREAD:
		if (++(cam->specframes) >= cam->nbufs) {
			FUNC1(cam);
			FUNC0(cam);
			cam->state = S_IDLE;
		}
		FUNC8(&cam->iowait);
		break;
	/*
	 * For the streaming case, we defer the real work to the
	 * camera tasklet.
	 *
	 * FIXME: if the application is not consuming the buffers,
	 * we should eventually put things on hold and restart in
	 * vidioc_dqbuf().
	 */
	    case S_STREAMING:
		FUNC6(&cam->s_tasklet);
		break;

	    default:
		FUNC2(cam, "Frame interrupt in non-operational state\n");
		break;
	}
}