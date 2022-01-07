
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {unsigned int debugfs_count; TYPE_1__* ddev; TYPE_2__* debugfs; } ;
struct TYPE_4__ {int num_files; int files; } ;
struct TYPE_3__ {int primary; int control; } ;


 int drm_debugfs_remove_files (int ,int ,int ) ;

__attribute__((used)) static void radeon_debugfs_remove_files(struct radeon_device *rdev)
{
}
