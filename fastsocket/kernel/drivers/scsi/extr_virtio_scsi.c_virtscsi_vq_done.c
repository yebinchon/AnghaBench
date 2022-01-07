
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_enable_cb (struct virtqueue*) ;
 void* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;

__attribute__((used)) static void virtscsi_vq_done(struct virtqueue *vq, void (*fn)(void *buf))
{
 void *buf;
 unsigned int len;

 do {
  virtqueue_disable_cb(vq);
  while ((buf = virtqueue_get_buf(vq, &len)) != ((void*)0))
   fn(buf);
 } while (!virtqueue_enable_cb(vq));
}
