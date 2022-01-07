
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {scalar_t__ type; int ** bufs; } ;
struct v4l2_buffer {scalar_t__ type; size_t index; } ;


 int EINVAL ;
 size_t VIDEO_MAX_FRAME ;
 int dprintk (int,char*) ;
 scalar_t__ unlikely (int) ;
 int videobuf_queue_lock (struct videobuf_queue*) ;
 int videobuf_queue_unlock (struct videobuf_queue*) ;
 int videobuf_status (struct videobuf_queue*,struct v4l2_buffer*,int *,scalar_t__) ;

int videobuf_querybuf(struct videobuf_queue *q, struct v4l2_buffer *b)
{
 int ret = -EINVAL;

 videobuf_queue_lock(q);
 if (unlikely(b->type != q->type)) {
  dprintk(1, "querybuf: Wrong type.\n");
  goto done;
 }
 if (unlikely(b->index >= VIDEO_MAX_FRAME)) {
  dprintk(1, "querybuf: index out of range.\n");
  goto done;
 }
 if (unlikely(((void*)0) == q->bufs[b->index])) {
  dprintk(1, "querybuf: buffer is null.\n");
  goto done;
 }

 videobuf_status(q, b, q->bufs[b->index], q->type);

 ret = 0;
done:
 videobuf_queue_unlock(q);
 return ret;
}
