
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct v4l2_buffer {int type; } ;
struct file {int dummy; } ;


 struct videobuf_queue* v4l2_m2m_get_vq (struct v4l2_m2m_ctx*,int ) ;
 int v4l2_m2m_try_schedule (struct v4l2_m2m_ctx*) ;
 int videobuf_qbuf (struct videobuf_queue*,struct v4l2_buffer*) ;

int v4l2_m2m_qbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
    struct v4l2_buffer *buf)
{
 struct videobuf_queue *vq;
 int ret;

 vq = v4l2_m2m_get_vq(m2m_ctx, buf->type);
 ret = videobuf_qbuf(vq, buf);
 if (!ret)
  v4l2_m2m_try_schedule(m2m_ctx);

 return ret;
}
