
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct cx18_stream {int type; int buf_size; int bufs_per_mdl; int mdl_size; int id; int out_work_order; TYPE_2__ q_idle; TYPE_2__ q_full; TYPE_2__ q_busy; TYPE_2__ q_free; int waitq; int buf_pool; int buffers; int dma; int handle; int name; struct cx18* cx; int * dvb; struct video_device* video_dev; } ;
struct cx18 {int* stream_buf_size; int * stream_buffers; struct cx18_stream* streams; } ;
struct TYPE_3__ {int dma; int name; } ;


 int CX18_INVALID_TASK_HANDLE ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int cx18_out_work_handler ;
 int cx18_queue_init (TYPE_2__*) ;
 TYPE_1__* cx18_stream_info ;
 int init_waitqueue_head (int *) ;
 int memset (struct cx18_stream*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void cx18_stream_init(struct cx18 *cx, int type)
{
 struct cx18_stream *s = &cx->streams[type];
 struct video_device *video_dev = s->video_dev;


 memset(s, 0, sizeof(*s));
 s->video_dev = video_dev;


 s->dvb = ((void*)0);
 s->cx = cx;
 s->type = type;
 s->name = cx18_stream_info[type].name;
 s->handle = CX18_INVALID_TASK_HANDLE;

 s->dma = cx18_stream_info[type].dma;
 s->buffers = cx->stream_buffers[type];
 s->buf_size = cx->stream_buf_size[type];
 INIT_LIST_HEAD(&s->buf_pool);
 s->bufs_per_mdl = 1;
 s->mdl_size = s->buf_size * s->bufs_per_mdl;

 init_waitqueue_head(&s->waitq);
 s->id = -1;
 spin_lock_init(&s->q_free.lock);
 cx18_queue_init(&s->q_free);
 spin_lock_init(&s->q_busy.lock);
 cx18_queue_init(&s->q_busy);
 spin_lock_init(&s->q_full.lock);
 cx18_queue_init(&s->q_full);
 spin_lock_init(&s->q_idle.lock);
 cx18_queue_init(&s->q_idle);

 INIT_WORK(&s->out_work_order, cx18_out_work_handler);
}
