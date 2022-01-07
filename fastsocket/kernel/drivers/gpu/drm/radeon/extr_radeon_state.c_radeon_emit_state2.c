
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct TYPE_4__ {int se_zbias_constant; int se_zbias_factor; } ;
struct TYPE_5__ {int dirty; int tex; int context; TYPE_1__ context2; } ;
typedef TYPE_2__ drm_radeon_state_t ;
typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int) ;
 int OUT_RING (int ) ;
 int RADEON_SE_ZBIAS_FACTOR ;
 int RADEON_UPLOAD_ZBIAS ;
 int RING_LOCALS ;
 int radeon_emit_state (int *,struct drm_file*,int *,int ,int) ;

__attribute__((used)) static int radeon_emit_state2(drm_radeon_private_t * dev_priv,
         struct drm_file *file_priv,
         drm_radeon_state_t * state)
{
 RING_LOCALS;

 if (state->dirty & RADEON_UPLOAD_ZBIAS) {
  BEGIN_RING(3);
  OUT_RING(CP_PACKET0(RADEON_SE_ZBIAS_FACTOR, 1));
  OUT_RING(state->context2.se_zbias_factor);
  OUT_RING(state->context2.se_zbias_constant);
  ADVANCE_RING();
 }

 return radeon_emit_state(dev_priv, file_priv, &state->context,
     state->tex, state->dirty);
}
