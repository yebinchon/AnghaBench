
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {int type; TYPE_1__* int_ops; } ;
struct videobuf_buffer {int state; int stream; } ;
struct v4l2_buffer {int flags; } ;
struct TYPE_2__ {int magic; } ;


 int CALL (struct videobuf_queue*,int ,struct videobuf_queue*,struct videobuf_buffer*) ;
 int EINVAL ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_QTYPE_OPS ;
 int V4L2_BUF_FLAG_DONE ;


 int VIDEOBUF_IDLE ;
 int dprintk (int,char*,...) ;
 int list_del (int *) ;
 int memset (struct v4l2_buffer*,int ,int) ;
 int stream_next_buffer (struct videobuf_queue*,struct videobuf_buffer**,int) ;
 int sync ;
 int videobuf_queue_lock (struct videobuf_queue*) ;
 int videobuf_queue_unlock (struct videobuf_queue*) ;
 int videobuf_status (struct videobuf_queue*,struct v4l2_buffer*,struct videobuf_buffer*,int ) ;

int videobuf_dqbuf(struct videobuf_queue *q,
     struct v4l2_buffer *b, int nonblocking)
{
 struct videobuf_buffer *buf = ((void*)0);
 int retval;

 MAGIC_CHECK(q->int_ops->magic, MAGIC_QTYPE_OPS);

 memset(b, 0, sizeof(*b));
 videobuf_queue_lock(q);

 retval = stream_next_buffer(q, &buf, nonblocking);
 if (retval < 0) {
  dprintk(1, "dqbuf: next_buffer error: %i\n", retval);
  goto done;
 }

 switch (buf->state) {
 case 128:
  dprintk(1, "dqbuf: state is error\n");
  break;
 case 129:
  dprintk(1, "dqbuf: state is done\n");
  break;
 default:
  dprintk(1, "dqbuf: state invalid\n");
  retval = -EINVAL;
  goto done;
 }
 CALL(q, sync, q, buf);
 videobuf_status(q, b, buf, q->type);
 list_del(&buf->stream);
 buf->state = VIDEOBUF_IDLE;
 b->flags &= ~V4L2_BUF_FLAG_DONE;
done:
 videobuf_queue_unlock(q);
 return retval;
}
