
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_dev {int dummy; } ;
typedef int sector_t ;



__attribute__((used)) static int count_device(struct dm_target *ti, struct dm_dev *dev,
   sector_t start, sector_t len, void *data)
{
 unsigned *num_devices = data;

 (*num_devices)++;

 return 0;
}
