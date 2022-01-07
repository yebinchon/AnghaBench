
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int complete (int *) ;
 unsigned int data_left ;
 int have_data ;
 int virtqueue_get_buf (struct virtqueue*,unsigned int*) ;

__attribute__((used)) static void random_recv_done(struct virtqueue *vq)
{
 unsigned int len;


 if (!virtqueue_get_buf(vq, &len))
  return;

 data_left += len;
 complete(&have_data);
}
