
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtio_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {int status; } ;


 TYPE_2__* to_lgdev (struct virtio_device*) ;

__attribute__((used)) static u8 lg_get_status(struct virtio_device *vdev)
{
 return to_lgdev(vdev)->desc->status;
}
