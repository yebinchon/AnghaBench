
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {size_t major_version; int (* sync_super ) (struct mddev*,struct md_rdev*) ;} ;
struct md_rdev {int dummy; } ;
struct TYPE_3__ {int (* sync_super ) (struct mddev*,struct md_rdev*) ;} ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int) ;
 int stub1 (struct mddev*,struct md_rdev*) ;
 int stub2 (struct mddev*,struct md_rdev*) ;
 TYPE_1__* super_types ;

__attribute__((used)) static void sync_super(struct mddev *mddev, struct md_rdev *rdev)
{
 if (mddev->sync_super) {
  mddev->sync_super(mddev, rdev);
  return;
 }

 BUG_ON(mddev->major_version >= ARRAY_SIZE(super_types));

 super_types[mddev->major_version].sync_super(mddev, rdev);
}
