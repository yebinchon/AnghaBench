
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct nouveau_crtc {int index; TYPE_1__ base; } ;


 int nv_show_cursor (int ,int ,int) ;

__attribute__((used)) static void
nv04_cursor_hide(struct nouveau_crtc *nv_crtc, bool update)
{
 nv_show_cursor(nv_crtc->base.dev, nv_crtc->index, 0);
}
