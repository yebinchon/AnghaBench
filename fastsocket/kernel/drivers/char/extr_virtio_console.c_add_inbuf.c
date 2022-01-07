
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
struct port_buffer {int size; int buf; } ;


 int sg_init_one (struct scatterlist*,int ,int ) ;
 int virtqueue_add_buf (struct virtqueue*,struct scatterlist*,int ,int,struct port_buffer*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static int add_inbuf(struct virtqueue *vq, struct port_buffer *buf)
{
 struct scatterlist sg[1];
 int ret;

 sg_init_one(sg, buf->buf, buf->size);

 ret = virtqueue_add_buf(vq, sg, 0, 1, buf);
 virtqueue_kick(vq);
 return ret;
}
