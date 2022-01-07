
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_curs {int dummy; } ;
struct nv50_chan {int user; } ;
struct drm_crtc {int dummy; } ;


 struct nv50_chan* nv50_chan (struct nv50_curs*) ;
 struct nv50_curs* nv50_curs (struct drm_crtc*) ;
 int nv_wo32 (int ,int,int) ;

__attribute__((used)) static int
nv50_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct nv50_curs *curs = nv50_curs(crtc);
 struct nv50_chan *chan = nv50_chan(curs);
 nv_wo32(chan->user, 0x0084, (y << 16) | (x & 0xffff));
 nv_wo32(chan->user, 0x0080, 0x00000000);
 return 0;
}
