
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cce_running; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int R128_PM4_BUFFER_CNTL ;
 int R128_PM4_BUFFER_CNTL_NOUPDATE ;
 int R128_PM4_MICRO_CNTL ;
 int R128_PM4_NONPM4 ;
 int R128_WRITE (int ,int) ;

__attribute__((used)) static void r128_do_cce_stop(drm_r128_private_t *dev_priv)
{
 R128_WRITE(R128_PM4_MICRO_CNTL, 0);
 R128_WRITE(R128_PM4_BUFFER_CNTL,
     R128_PM4_NONPM4 | R128_PM4_BUFFER_CNTL_NOUPDATE);

 dev_priv->cce_running = 0;
}
