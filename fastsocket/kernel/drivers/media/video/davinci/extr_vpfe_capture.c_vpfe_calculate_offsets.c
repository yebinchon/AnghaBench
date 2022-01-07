
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {int field_off; int v4l2_dev; } ;
struct v4l2_rect {int height; int width; } ;
struct TYPE_3__ {int (* get_image_window ) (struct v4l2_rect*) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 TYPE_2__* ccdc_dev ;
 int debug ;
 int stub1 (struct v4l2_rect*) ;
 int v4l2_dbg (int,int ,int *,char*) ;

__attribute__((used)) static void vpfe_calculate_offsets(struct vpfe_device *vpfe_dev)
{
 struct v4l2_rect image_win;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_calculate_offsets\n");

 ccdc_dev->hw_ops.get_image_window(&image_win);
 vpfe_dev->field_off = image_win.height * image_win.width;
}
