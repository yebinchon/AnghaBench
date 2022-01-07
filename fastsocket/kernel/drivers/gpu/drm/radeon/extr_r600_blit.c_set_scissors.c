
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET3 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int R600_IT_SET_CONTEXT_REG ;
 int R600_PA_SC_GENERIC_SCISSOR_TL ;
 int R600_PA_SC_SCREEN_SCISSOR_TL ;
 int R600_PA_SC_WINDOW_SCISSOR_TL ;
 int R600_SET_CONTEXT_REG_OFFSET ;
 int RING_LOCALS ;

__attribute__((used)) static void
set_scissors(drm_radeon_private_t *dev_priv, int x1, int y1, int x2, int y2)
{
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(12);
 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 2));
 OUT_RING((R600_PA_SC_SCREEN_SCISSOR_TL - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING((x1 << 0) | (y1 << 16));
 OUT_RING((x2 << 0) | (y2 << 16));

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 2));
 OUT_RING((R600_PA_SC_GENERIC_SCISSOR_TL - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING((x1 << 0) | (y1 << 16) | (1 << 31));
 OUT_RING((x2 << 0) | (y2 << 16));

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 2));
 OUT_RING((R600_PA_SC_WINDOW_SCISSOR_TL - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING((x1 << 0) | (y1 << 16) | (1 << 31));
 OUT_RING((x2 << 0) | (y2 << 16));
 ADVANCE_RING();
}
