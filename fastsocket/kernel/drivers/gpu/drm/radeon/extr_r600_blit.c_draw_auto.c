
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int COMMIT_RING () ;
 int CP_PACKET3 (int ,int) ;
 int DI_INDEX_SIZE_16_BIT ;
 int DI_PT_RECTLIST ;
 int DI_SRC_SEL_AUTO_INDEX ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int R600_IT_DRAW_INDEX_AUTO ;
 int R600_IT_INDEX_TYPE ;
 int R600_IT_NUM_INSTANCES ;
 int R600_IT_SET_CONFIG_REG ;
 int R600_SET_CONFIG_REG_OFFSET ;
 int R600_VGT_PRIMITIVE_TYPE ;
 int RING_LOCALS ;

__attribute__((used)) static void
draw_auto(drm_radeon_private_t *dev_priv)
{
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(10);
 OUT_RING(CP_PACKET3(R600_IT_SET_CONFIG_REG, 1));
 OUT_RING((R600_VGT_PRIMITIVE_TYPE - R600_SET_CONFIG_REG_OFFSET) >> 2);
 OUT_RING(DI_PT_RECTLIST);

 OUT_RING(CP_PACKET3(R600_IT_INDEX_TYPE, 0));



 OUT_RING(DI_INDEX_SIZE_16_BIT);


 OUT_RING(CP_PACKET3(R600_IT_NUM_INSTANCES, 0));
 OUT_RING(1);

 OUT_RING(CP_PACKET3(R600_IT_DRAW_INDEX_AUTO, 1));
 OUT_RING(3);
 OUT_RING(DI_SRC_SEL_AUTO_INDEX);

 ADVANCE_RING();
 COMMIT_RING();
}
