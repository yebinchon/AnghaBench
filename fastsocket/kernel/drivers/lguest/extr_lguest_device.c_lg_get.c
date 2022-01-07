
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dummy; } ;
struct lguest_device_desc {unsigned int config_len; } ;
struct TYPE_2__ {struct lguest_device_desc* desc; } ;


 int BUG_ON (int) ;
 scalar_t__ lg_config (struct lguest_device_desc*) ;
 int memcpy (void*,scalar_t__,unsigned int) ;
 TYPE_1__* to_lgdev (struct virtio_device*) ;

__attribute__((used)) static void lg_get(struct virtio_device *vdev, unsigned int offset,
     void *buf, unsigned len)
{
 struct lguest_device_desc *desc = to_lgdev(vdev)->desc;


 BUG_ON(offset + len > desc->config_len);
 memcpy(buf, lg_config(desc) + offset, len);
}
