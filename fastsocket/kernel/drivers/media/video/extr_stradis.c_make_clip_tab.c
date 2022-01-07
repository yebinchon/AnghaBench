
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct video_clip {int x; int y; int width; int height; } ;
struct TYPE_2__ {int width; int height; int x; int swidth; int y; int sheight; } ;
struct saa7146 {TYPE_1__ win; int * dmavid2; } ;


 int VIDEO_CLIPMAP_SIZE ;
 int clip_draw_rectangle (int *,int,int,int,int) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void make_clip_tab(struct saa7146 *saa, struct video_clip *cr, int ncr)
{
 int i, width, height;
 u32 *clipmap;

 clipmap = saa->dmavid2;
 if ((width = saa->win.width) > 1023)
  width = 1023;
 if ((height = saa->win.height) > 640)
  height = 639;
 if (ncr > 0) {

  memset(clipmap, 0, VIDEO_CLIPMAP_SIZE);
  for (i = 0; i < ncr; i++)
   clip_draw_rectangle(clipmap, cr[i].x, cr[i].y,
    cr[i].width, cr[i].height);
 }



 clip_draw_rectangle(clipmap, (saa->win.x + width > saa->win.swidth) ?
  (saa->win.swidth - saa->win.x) : width, 0, 1024, 768);
 clip_draw_rectangle(clipmap, 0,
  (saa->win.y + height > saa->win.sheight) ?
  (saa->win.sheight - saa->win.y) : height, 1024, 768);
 if (saa->win.x < 0)
  clip_draw_rectangle(clipmap, 0, 0, -saa->win.x, 768);
 if (saa->win.y < 0)
  clip_draw_rectangle(clipmap, 0, 0, 1024, -saa->win.y);
}
