
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;
struct lguest_device {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int num_vq; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct virtqueue*) ;
 int PTR_ERR (struct virtqueue*) ;
 int lg_del_vqs (struct virtio_device*) ;
 struct virtqueue* lg_find_vq (struct virtio_device*,int,int *,char const*) ;
 struct lguest_device* to_lgdev (struct virtio_device*) ;

__attribute__((used)) static int lg_find_vqs(struct virtio_device *vdev, unsigned nvqs,
         struct virtqueue *vqs[],
         vq_callback_t *callbacks[],
         const char *names[])
{
 struct lguest_device *ldev = to_lgdev(vdev);
 int i;


 if (nvqs > ldev->desc->num_vq)
  return -ENOENT;

 for (i = 0; i < nvqs; ++i) {
  vqs[i] = lg_find_vq(vdev, i, callbacks[i], names[i]);
  if (IS_ERR(vqs[i]))
   goto error;
 }
 return 0;

error:
 lg_del_vqs(vdev);
 return PTR_ERR(vqs[i]);
}
