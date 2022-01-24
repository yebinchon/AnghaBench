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
struct dvb_demux_feed {int /*<<< orphan*/  index; int /*<<< orphan*/  pid; struct dvb_demux* demux; } ;
struct dvb_demux {scalar_t__ priv; } ;
struct cx18_stream {TYPE_1__* dvb; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; } ;
struct TYPE_2__ {scalar_t__ feeding; int /*<<< orphan*/  feedlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (struct cx18_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux = feed->demux;
	struct cx18_stream *stream = (struct cx18_stream *)demux->priv;
	struct cx18 *cx;
	int ret = -EINVAL;

	if (stream) {
		cx = stream->cx;
		FUNC0("Stop feed: pid = 0x%x index = %d\n",
				feed->pid, feed->index);

		FUNC2(&stream->dvb->feedlock);
		if (--stream->dvb->feeding == 0) {
			FUNC0("Stopping Transport DMA\n");
			FUNC2(&cx->serialize_lock);
			ret = FUNC1(stream, 0);
			FUNC3(&cx->serialize_lock);
		} else
			ret = 0;
		FUNC3(&stream->dvb->feedlock);
	}

	return ret;
}