
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {scalar_t__ private_data; TYPE_1__* queue; } ;
struct TYPE_2__ {int * queuedata; } ;
typedef int DAC960_Controller_T ;


 int disk_size (int *,int) ;
 int set_capacity (struct gendisk*,int ) ;

__attribute__((used)) static int DAC960_revalidate_disk(struct gendisk *disk)
{
 DAC960_Controller_T *p = disk->queue->queuedata;
 int unit = (long)disk->private_data;

 set_capacity(disk, disk_size(p, unit));
 return 0;
}
