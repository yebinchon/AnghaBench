
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nmodes; struct gspca_ctrl* ctrls; TYPE_1__* cam_mode; } ;
struct gspca_dev {int curr_mode; TYPE_3__* sd_desc; TYPE_2__ cam; int pixfmt; int height; int width; } ;
struct gspca_ctrl {int def; int val; } ;
struct TYPE_6__ {int nctrls; } ;
struct TYPE_4__ {int pixelformat; int height; int width; } ;



__attribute__((used)) static void gspca_set_default_mode(struct gspca_dev *gspca_dev)
{
 struct gspca_ctrl *ctrl;
 int i;

 i = gspca_dev->cam.nmodes - 1;
 gspca_dev->curr_mode = i;
 gspca_dev->width = gspca_dev->cam.cam_mode[i].width;
 gspca_dev->height = gspca_dev->cam.cam_mode[i].height;
 gspca_dev->pixfmt = gspca_dev->cam.cam_mode[i].pixelformat;



 ctrl = gspca_dev->cam.ctrls;
 if (ctrl != ((void*)0)) {
  for (i = 0;
       i < gspca_dev->sd_desc->nctrls;
       i++, ctrl++)
   ctrl->val = ctrl->def;
 }
}
