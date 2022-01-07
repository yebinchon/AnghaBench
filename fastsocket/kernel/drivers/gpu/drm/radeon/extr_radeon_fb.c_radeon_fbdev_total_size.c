
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* rfbdev; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
struct radeon_bo {int dummy; } ;
struct TYPE_4__ {int obj; } ;
struct TYPE_5__ {TYPE_1__ rfb; } ;


 struct radeon_bo* gem_to_radeon_bo (int ) ;
 scalar_t__ radeon_bo_size (struct radeon_bo*) ;

int radeon_fbdev_total_size(struct radeon_device *rdev)
{
 struct radeon_bo *robj;
 int size = 0;

 robj = gem_to_radeon_bo(rdev->mode_info.rfbdev->rfb.obj);
 size += radeon_bo_size(robj);
 return size;
}
