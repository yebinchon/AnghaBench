
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtio_device {int dummy; } ;


 int BUG_ON (int) ;
 int set_status (struct virtio_device*,int ) ;

__attribute__((used)) static void lg_set_status(struct virtio_device *vdev, u8 status)
{
 BUG_ON(!status);
 set_status(vdev, status);
}
