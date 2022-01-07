
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ cp_running; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_DEBUG (char*) ;
 int R600_CP_ME_CNTL ;
 int R600_CP_ME_HALT ;
 int RADEON_WRITE (int ,int) ;

void r600_do_cp_stop(drm_radeon_private_t *dev_priv)
{
 uint32_t cp_me;

 DRM_DEBUG("\n");

 cp_me = 0xff | R600_CP_ME_HALT;

 RADEON_WRITE(R600_CP_ME_CNTL, cp_me);

 dev_priv->cp_running = 0;
}
