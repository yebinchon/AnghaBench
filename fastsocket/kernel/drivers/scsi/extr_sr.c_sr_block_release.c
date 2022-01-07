
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cd {int cdi; } ;
struct gendisk {int dummy; } ;
typedef int fmode_t ;


 int cdrom_release (int *,int ) ;
 struct scsi_cd* scsi_cd (struct gendisk*) ;
 int scsi_cd_put (struct scsi_cd*) ;

__attribute__((used)) static int sr_block_release(struct gendisk *disk, fmode_t mode)
{
 struct scsi_cd *cd = scsi_cd(disk);
 cdrom_release(&cd->cdi, mode);
 scsi_cd_put(cd);
 return 0;
}
