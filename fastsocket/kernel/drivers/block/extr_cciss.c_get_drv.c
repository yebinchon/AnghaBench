
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int * private_data; } ;
typedef int drive_info_struct ;



__attribute__((used)) static inline drive_info_struct *get_drv(struct gendisk *disk)
{
 return disk->private_data;
}
