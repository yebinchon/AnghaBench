
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int EAGAIN ;
 int EDEADLK ;
 int radeon_gpu_reset (struct radeon_device*) ;

__attribute__((used)) static int radeon_cs_handle_lockup(struct radeon_device *rdev, int r)
{
 if (r == -EDEADLK) {
  r = radeon_gpu_reset(rdev);
  if (!r)
   r = -EAGAIN;
 }
 return r;
}
