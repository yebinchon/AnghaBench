
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int COMMIT_RING () ;
 int R600_CLEAR_AGE (int ) ;
 int RING_LOCALS ;
 int radeon_cs_id_get (int *) ;

__attribute__((used)) static void r600_cs_id_emit(drm_radeon_private_t *dev_priv, u32 *id)
{
 RING_LOCALS;

 *id = radeon_cs_id_get(dev_priv);


 BEGIN_RING(3);
 R600_CLEAR_AGE(*id);
 ADVANCE_RING();
 COMMIT_RING();
}
