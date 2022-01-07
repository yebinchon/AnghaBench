
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int medium_changed; } ;
struct tape_device {TYPE_1__ blk_data; } ;
struct gendisk {scalar_t__ private_data; } ;


 int DBF_LH (int,char*,struct tape_device*,int) ;

__attribute__((used)) static int
tapeblock_medium_changed(struct gendisk *disk)
{
 struct tape_device *device;

 device = (struct tape_device *) disk->private_data;
 DBF_LH(6, "tapeblock_medium_changed(%p) = %d\n",
  device, device->blk_data.medium_changed);

 return device->blk_data.medium_changed;
}
