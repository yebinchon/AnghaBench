
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int dummy; } ;
struct TYPE_2__ {int cd_info; } ;


 int cdrom_media_changed (int ) ;
 TYPE_1__ gd ;

__attribute__((used)) static int gdrom_bdops_mediachanged(struct gendisk *disk)
{
 return cdrom_media_changed(gd.cd_info);
}
