
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int cd_info; } ;


 int cdrom_open (int ,struct block_device*,int ) ;
 TYPE_1__ gd ;

__attribute__((used)) static int gdrom_bdops_open(struct block_device *bdev, fmode_t mode)
{
 return cdrom_open(gd.cd_info, bdev, mode);
}
