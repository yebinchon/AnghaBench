
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int info; } ;
struct gendisk {struct pcd_unit* private_data; } ;
typedef int fmode_t ;


 int cdrom_release (int *,int ) ;

__attribute__((used)) static int pcd_block_release(struct gendisk *disk, fmode_t mode)
{
 struct pcd_unit *cd = disk->private_data;
 cdrom_release(&cd->info, mode);
 return 0;
}
