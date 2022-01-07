
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int show; int hide; int set_pos; int set_offset; } ;
struct nouveau_crtc {TYPE_1__ cursor; } ;


 int nv04_cursor_hide ;
 int nv04_cursor_set_offset ;
 int nv04_cursor_set_pos ;
 int nv04_cursor_show ;

int
nv04_cursor_init(struct nouveau_crtc *crtc)
{
 crtc->cursor.set_offset = nv04_cursor_set_offset;
 crtc->cursor.set_pos = nv04_cursor_set_pos;
 crtc->cursor.hide = nv04_cursor_hide;
 crtc->cursor.show = nv04_cursor_show;
 return 0;
}
