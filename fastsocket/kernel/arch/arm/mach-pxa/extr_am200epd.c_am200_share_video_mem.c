
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ xres; scalar_t__ yres; } ;
struct fb_info {TYPE_3__* fbops; int screen_base; TYPE_1__ var; } ;
struct TYPE_10__ {struct fb_info* host_fbinfo; int metromem; } ;
struct TYPE_9__ {TYPE_2__* modes; } ;
struct TYPE_8__ {int owner; } ;
struct TYPE_7__ {scalar_t__ xres; scalar_t__ yres; } ;


 int ENODEV ;
 TYPE_5__ am200_board ;
 TYPE_4__ am200_fb_info ;
 int try_module_get (int ) ;

__attribute__((used)) static int am200_share_video_mem(struct fb_info *info)
{

 if ((info->var.xres != am200_fb_info.modes->xres)
  || (info->var.yres != am200_fb_info.modes->yres))
  return 0;


 am200_board.metromem = info->screen_base;
 am200_board.host_fbinfo = info;


 if (!try_module_get(info->fbops->owner))
  return -ENODEV;

 return 0;
}
