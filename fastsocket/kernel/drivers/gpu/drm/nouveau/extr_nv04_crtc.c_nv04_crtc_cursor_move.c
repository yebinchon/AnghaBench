
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_pos ) (struct nouveau_crtc*,int,int) ;} ;
struct nouveau_crtc {TYPE_1__ cursor; } ;
struct drm_crtc {int dummy; } ;


 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int stub1 (struct nouveau_crtc*,int,int) ;

__attribute__((used)) static int
nv04_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);

 nv_crtc->cursor.set_pos(nv_crtc, x, y);
 return 0;
}
