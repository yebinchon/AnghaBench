
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int drm_radeon_private_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ wait; } ;
typedef TYPE_2__ drm_r300_cmd_header_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int ) ;
 int OUT_RING (int) ;






 int RADEON_WAIT_2D_IDLE ;
 int RADEON_WAIT_2D_IDLECLEAN ;
 int RADEON_WAIT_3D_IDLE ;
 int RADEON_WAIT_3D_IDLECLEAN ;
 int RADEON_WAIT_UNTIL ;
 int RING_LOCALS ;

__attribute__((used)) static void r300_cmd_wait(drm_radeon_private_t * dev_priv,
     drm_r300_cmd_header_t header)
{
 u32 wait_until;
 RING_LOCALS;

 if (!header.wait.flags)
  return;

 wait_until = 0;

 switch(header.wait.flags) {
 case 129:
  wait_until = RADEON_WAIT_2D_IDLE;
  break;
 case 128:
  wait_until = RADEON_WAIT_3D_IDLE;
  break;
 case 131:
  wait_until = RADEON_WAIT_2D_IDLE|RADEON_WAIT_3D_IDLE;
  break;
 case 133:
  wait_until = RADEON_WAIT_2D_IDLE|RADEON_WAIT_2D_IDLECLEAN;
  break;
 case 130:
  wait_until = RADEON_WAIT_3D_IDLE|RADEON_WAIT_3D_IDLECLEAN;
  break;
 case 132:
  wait_until = RADEON_WAIT_2D_IDLE|RADEON_WAIT_2D_IDLECLEAN;
  wait_until |= RADEON_WAIT_3D_IDLE|RADEON_WAIT_3D_IDLECLEAN;
  break;
 default:
  return;
 }

 BEGIN_RING(2);
 OUT_RING(CP_PACKET0(RADEON_WAIT_UNTIL, 0));
 OUT_RING(wait_until);
 ADVANCE_RING();
}
