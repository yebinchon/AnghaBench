
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame; int second; int minute; } ;
struct TYPE_5__ {int lba; TYPE_1__ msf; } ;
struct cdrom_tocentry {scalar_t__ cdte_format; TYPE_2__ cdte_addr; int cdte_adr; int cdte_ctrl; int cdte_track; } ;
struct TYPE_6__ {int lba; } ;
struct atapi_toc_entry {TYPE_3__ addr; int adr; int control; } ;
typedef int ide_drive_t ;


 scalar_t__ CDROM_MSF ;
 int ide_cd_get_toc_entry (int *,int ,struct atapi_toc_entry**) ;
 int lba_to_msf (int ,int *,int *,int *) ;

__attribute__((used)) static int ide_cd_read_tocentry(ide_drive_t *drive, void *arg)
{
 struct cdrom_tocentry *tocentry = arg;
 struct atapi_toc_entry *toce;
 int stat;

 stat = ide_cd_get_toc_entry(drive, tocentry->cdte_track, &toce);
 if (stat)
  return stat;

 tocentry->cdte_ctrl = toce->control;
 tocentry->cdte_adr = toce->adr;
 if (tocentry->cdte_format == CDROM_MSF) {
  lba_to_msf(toce->addr.lba,
      &tocentry->cdte_addr.msf.minute,
      &tocentry->cdte_addr.msf.second,
      &tocentry->cdte_addr.msf.frame);
 } else
  tocentry->cdte_addr.lba = toce->addr.lba;

 return 0;
}
