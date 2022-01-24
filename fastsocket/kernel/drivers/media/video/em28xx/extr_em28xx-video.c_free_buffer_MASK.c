#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videobuf_queue {struct em28xx_fh* priv_data; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct em28xx_buffer {TYPE_2__ vb; } ;
struct TYPE_3__ {struct em28xx_buffer* vid_buf; } ;
struct em28xx {int /*<<< orphan*/  slock; TYPE_1__ isoc_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct videobuf_queue *vq, struct em28xx_buffer *buf)
{
	struct em28xx_fh     *fh  = vq->priv_data;
	struct em28xx        *dev = fh->dev;
	unsigned long flags = 0;
	if (FUNC1())
		FUNC0();

	/* We used to wait for the buffer to finish here, but this didn't work
	   because, as we were keeping the state as VIDEOBUF_QUEUED,
	   videobuf_queue_cancel marked it as finished for us.
	   (Also, it could wedge forever if the hardware was misconfigured.)

	   This should be safe; by the time we get here, the buffer isn't
	   queued anymore. If we ever start marking the buffers as
	   VIDEOBUF_ACTIVE, it won't be, though.
	*/
	FUNC2(&dev->slock, flags);
	if (dev->isoc_ctl.vid_buf == buf)
		dev->isoc_ctl.vid_buf = NULL;
	FUNC3(&dev->slock, flags);

	FUNC4(&buf->vb);
	buf->vb.state = VIDEOBUF_NEEDS_INIT;
}