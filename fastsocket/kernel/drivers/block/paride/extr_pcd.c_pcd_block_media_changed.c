
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int info; } ;
struct gendisk {struct pcd_unit* private_data; } ;


 int cdrom_media_changed (int *) ;

__attribute__((used)) static int pcd_block_media_changed(struct gendisk *disk)
{
 struct pcd_unit *cd = disk->private_data;
 return cdrom_media_changed(&cd->info);
}
