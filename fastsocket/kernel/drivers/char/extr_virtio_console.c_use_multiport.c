
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ports_device {TYPE_1__* vdev; } ;
struct TYPE_2__ {int* features; } ;


 int VIRTIO_CONSOLE_F_MULTIPORT ;

__attribute__((used)) static inline bool use_multiport(struct ports_device *portdev)
{




 if (!portdev->vdev)
  return 0;
 return portdev->vdev->features[0] & (1 << VIRTIO_CONSOLE_F_MULTIPORT);
}
