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
struct videobuf_queue {struct omap24xxcam_fh* priv_data; } ;
struct videobuf_buffer {int state; int /*<<< orphan*/  size; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int sgdma_in_queue; int /*<<< orphan*/  dev; int /*<<< orphan*/  core_enable_disable_lock; int /*<<< orphan*/  in_reset; int /*<<< orphan*/  sgdma; } ;
typedef  enum videobuf_state { ____Placeholder_videobuf_state } videobuf_state ;
struct TYPE_2__ {int /*<<< orphan*/  sglen; int /*<<< orphan*/  sglist; } ;

/* Variables and functions */
 int VIDEOBUF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap24xxcam_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct videobuf_buffer*) ; 
 int /*<<< orphan*/  omap24xxcam_vbq_complete ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC6 (struct videobuf_buffer*) ; 

__attribute__((used)) static void FUNC7(struct videobuf_queue *vbq,
				  struct videobuf_buffer *vb)
{
	struct omap24xxcam_fh *fh = vbq->priv_data;
	struct omap24xxcam_device *cam = fh->cam;
	enum videobuf_state state = vb->state;
	unsigned long flags;
	int err;

	/*
	 * FIXME: We're marking the buffer active since we have no
	 * pretty way of marking it active exactly when the
	 * scatter-gather transfer starts.
	 */
	vb->state = VIDEOBUF_ACTIVE;

	err = FUNC3(&fh->cam->sgdma,
				      FUNC6(vb)->sglist,
				      FUNC6(vb)->sglen, vb->size,
				      omap24xxcam_vbq_complete, vb);

	if (!err) {
		FUNC4(&cam->core_enable_disable_lock, flags);
		if (++cam->sgdma_in_queue == 1
		    && !FUNC0(&cam->in_reset))
			FUNC2(cam);
		FUNC5(&cam->core_enable_disable_lock, flags);
	} else {
		/*
		 * Oops. We're not supposed to get any errors here.
		 * The only way we could get an error is if we ran out
		 * of scatter-gather DMA slots, but we are supposed to
		 * have at least as many scatter-gather DMA slots as
		 * video buffers so that can't happen.
		 */
		FUNC1(cam->dev, "failed to queue a video buffer for dma!\n");
		FUNC1(cam->dev, "likely a bug in the driver!\n");
		vb->state = state;
	}
}