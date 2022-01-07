
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int cd_info; } ;


 int cdrom_release (int ,int ) ;
 TYPE_1__ gd ;

__attribute__((used)) static int gdrom_bdops_release(struct gendisk *disk, fmode_t mode)
{
 cdrom_release(gd.cd_info, mode);
 return 0;
}
