
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int probe_common (struct virtio_device*) ;

__attribute__((used)) static int virtrng_probe(struct virtio_device *vdev)
{
 return probe_common(vdev);
}
