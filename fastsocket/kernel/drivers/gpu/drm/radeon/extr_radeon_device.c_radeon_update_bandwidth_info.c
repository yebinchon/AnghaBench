
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {void* full; } ;
struct TYPE_6__ {void* full; } ;
struct TYPE_7__ {int current_sclk; int current_mclk; TYPE_4__ sclk; TYPE_1__ core_bandwidth; TYPE_4__ mclk; } ;
struct radeon_device {int flags; TYPE_2__ pm; } ;
struct TYPE_8__ {void* full; } ;
typedef TYPE_3__ fixed20_12 ;


 int RADEON_IS_IGP ;
 void* dfixed_const (int) ;
 void* dfixed_div (TYPE_4__,TYPE_3__) ;

void radeon_update_bandwidth_info(struct radeon_device *rdev)
{
 fixed20_12 a;
 u32 sclk = rdev->pm.current_sclk;
 u32 mclk = rdev->pm.current_mclk;


 a.full = dfixed_const(100);
 rdev->pm.sclk.full = dfixed_const(sclk);
 rdev->pm.sclk.full = dfixed_div(rdev->pm.sclk, a);
 rdev->pm.mclk.full = dfixed_const(mclk);
 rdev->pm.mclk.full = dfixed_div(rdev->pm.mclk, a);

 if (rdev->flags & RADEON_IS_IGP) {
  a.full = dfixed_const(16);

  rdev->pm.core_bandwidth.full = dfixed_div(rdev->pm.sclk, a);
 }
}
