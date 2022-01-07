
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {unsigned int heads; unsigned int sectors; } ;


 TYPE_1__ config ;

int ultrastor_biosparam(struct scsi_device *sdev, struct block_device *bdev,
  sector_t capacity, int * dkinfo)
{
    int size = capacity;
    unsigned int s = config.heads * config.sectors;

    dkinfo[0] = config.heads;
    dkinfo[1] = config.sectors;
    dkinfo[2] = size / s;




    return 0;
}
