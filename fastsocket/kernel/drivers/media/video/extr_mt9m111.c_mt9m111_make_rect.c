
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {void* height; int top; void* width; int left; } ;
struct mt9m111 {TYPE_1__* fmt; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ code; } ;


 void* ALIGN (void*,int) ;
 int MT9M111_MAX_HEIGHT ;
 int MT9M111_MAX_WIDTH ;
 int MT9M111_MIN_DARK_COLS ;
 int MT9M111_MIN_DARK_ROWS ;
 scalar_t__ V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE ;
 scalar_t__ V4L2_MBUS_FMT_SBGGR8_1X8 ;
 int mt9m111_setup_rect (struct i2c_client*,struct v4l2_rect*) ;
 int soc_camera_limit_side (int *,void**,int ,int,int ) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;

__attribute__((used)) static int mt9m111_make_rect(struct i2c_client *client,
        struct v4l2_rect *rect)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);

 if (mt9m111->fmt->code == V4L2_MBUS_FMT_SBGGR8_1X8 ||
     mt9m111->fmt->code == V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE) {

  rect->width = ALIGN(rect->width, 2);
  rect->height = ALIGN(rect->height, 2);

 }


 soc_camera_limit_side(&rect->left, &rect->width,
       MT9M111_MIN_DARK_COLS, 2, MT9M111_MAX_WIDTH);

 soc_camera_limit_side(&rect->top, &rect->height,
       MT9M111_MIN_DARK_ROWS, 2, MT9M111_MAX_HEIGHT);

 return mt9m111_setup_rect(client, rect);
}
