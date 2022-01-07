
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ r100_debugfs_rbbm_init (struct radeon_device*) ;

__attribute__((used)) static void rs600_debugfs(struct radeon_device *rdev)
{
 if (r100_debugfs_rbbm_init(rdev))
  DRM_ERROR("Failed to register debugfs file for RBBM !\n");
}
