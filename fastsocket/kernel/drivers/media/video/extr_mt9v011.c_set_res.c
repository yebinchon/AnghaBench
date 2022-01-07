
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v011 {int width; int height; } ;


 int R01_MT9V011_ROWSTART ;
 int R02_MT9V011_COLSTART ;
 int R03_MT9V011_HEIGHT ;
 int R04_MT9V011_WIDTH ;
 int R05_MT9V011_HBLANK ;
 int R06_MT9V011_VBLANK ;
 int calc_fps (struct v4l2_subdev*,int *,int *) ;
 int mt9v011_write (struct v4l2_subdev*,int ,int) ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;

__attribute__((used)) static void set_res(struct v4l2_subdev *sd)
{
 struct mt9v011 *core = to_mt9v011(sd);
 unsigned vstart, hstart;
 hstart = 14 + (640 - core->width) / 2;
 mt9v011_write(sd, R02_MT9V011_COLSTART, hstart);
 mt9v011_write(sd, R04_MT9V011_WIDTH, core->width);
 mt9v011_write(sd, R05_MT9V011_HBLANK, 771 - core->width);

 vstart = 8 + (480 - core->height) / 2;
 mt9v011_write(sd, R01_MT9V011_ROWSTART, vstart);
 mt9v011_write(sd, R03_MT9V011_HEIGHT, core->height);
 mt9v011_write(sd, R06_MT9V011_VBLANK, 508 - core->height);

 calc_fps(sd, ((void*)0), ((void*)0));
}
