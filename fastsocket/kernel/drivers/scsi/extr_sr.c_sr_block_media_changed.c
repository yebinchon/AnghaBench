
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cd {int cdi; } ;
struct gendisk {int dummy; } ;


 int cdrom_media_changed (int *) ;
 struct scsi_cd* scsi_cd (struct gendisk*) ;

__attribute__((used)) static int sr_block_media_changed(struct gendisk *disk)
{
 struct scsi_cd *cd = scsi_cd(disk);
 return cdrom_media_changed(&cd->cdi);
}
