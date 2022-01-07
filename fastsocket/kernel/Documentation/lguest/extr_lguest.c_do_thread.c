
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int (* service ) (struct virtqueue*) ;} ;


 int stub1 (struct virtqueue*) ;

__attribute__((used)) static int do_thread(void *_vq)
{
 struct virtqueue *vq = _vq;

 for (;;)
  vq->service(vq);
 return 0;
}
