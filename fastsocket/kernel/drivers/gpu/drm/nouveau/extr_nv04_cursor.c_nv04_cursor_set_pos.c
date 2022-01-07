
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct nouveau_crtc {int cursor_saved_x; int cursor_saved_y; int index; TYPE_1__ base; } ;


 int NVWriteRAMDAC (int ,int ,int ,int) ;
 int NV_PRAMDAC_CU_START_POS ;
 int NV_PRAMDAC_CU_START_POS_X ;
 int NV_PRAMDAC_CU_START_POS_Y ;
 int XLATE (int,int ,int ) ;

__attribute__((used)) static void
nv04_cursor_set_pos(struct nouveau_crtc *nv_crtc, int x, int y)
{
 nv_crtc->cursor_saved_x = x; nv_crtc->cursor_saved_y = y;
 NVWriteRAMDAC(nv_crtc->base.dev, nv_crtc->index,
        NV_PRAMDAC_CU_START_POS,
        XLATE(y, 0, NV_PRAMDAC_CU_START_POS_Y) |
        XLATE(x, 0, NV_PRAMDAC_CU_START_POS_X));
}
