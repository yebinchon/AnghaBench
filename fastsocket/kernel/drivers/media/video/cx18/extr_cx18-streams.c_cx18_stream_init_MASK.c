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
struct video_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct cx18_stream {int type; int buf_size; int bufs_per_mdl; int mdl_size; int id; int /*<<< orphan*/  out_work_order; TYPE_2__ q_idle; TYPE_2__ q_full; TYPE_2__ q_busy; TYPE_2__ q_free; int /*<<< orphan*/  waitq; int /*<<< orphan*/  buf_pool; int /*<<< orphan*/  buffers; int /*<<< orphan*/  dma; int /*<<< orphan*/  handle; int /*<<< orphan*/  name; struct cx18* cx; int /*<<< orphan*/ * dvb; struct video_device* video_dev; } ;
struct cx18 {int* stream_buf_size; int /*<<< orphan*/ * stream_buffers; struct cx18_stream* streams; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_INVALID_TASK_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cx18_out_work_handler ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* cx18_stream_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18_stream*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cx18 *cx, int type)
{
	struct cx18_stream *s = &cx->streams[type];
	struct video_device *video_dev = s->video_dev;

	/* we need to keep video_dev, so restore it afterwards */
	FUNC4(s, 0, sizeof(*s));
	s->video_dev = video_dev;

	/* initialize cx18_stream fields */
	s->dvb = NULL;
	s->cx = cx;
	s->type = type;
	s->name = cx18_stream_info[type].name;
	s->handle = CX18_INVALID_TASK_HANDLE;

	s->dma = cx18_stream_info[type].dma;
	s->buffers = cx->stream_buffers[type];
	s->buf_size = cx->stream_buf_size[type];
	FUNC0(&s->buf_pool);
	s->bufs_per_mdl = 1;
	s->mdl_size = s->buf_size * s->bufs_per_mdl;

	FUNC3(&s->waitq);
	s->id = -1;
	FUNC5(&s->q_free.lock);
	FUNC2(&s->q_free);
	FUNC5(&s->q_busy.lock);
	FUNC2(&s->q_busy);
	FUNC5(&s->q_full.lock);
	FUNC2(&s->q_full);
	FUNC5(&s->q_idle.lock);
	FUNC2(&s->q_idle);

	FUNC1(&s->out_work_order, cx18_out_work_handler);
}