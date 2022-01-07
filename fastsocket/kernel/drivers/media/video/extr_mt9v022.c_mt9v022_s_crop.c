
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int width; int height; int left; int top; } ;
struct v4l2_crop {struct v4l2_rect c; } ;
struct mt9v022 {scalar_t__ fmts; int y_skip_top; struct v4l2_rect rect; } ;
struct i2c_client {int dev; } ;


 void* ALIGN (int,int) ;
 int MT9V022_AEC_AGC_ENABLE ;
 int MT9V022_COLUMN_SKIP ;
 int MT9V022_COLUMN_START ;
 int MT9V022_HORIZONTAL_BLANKING ;
 int MT9V022_MAX_HEIGHT ;
 int MT9V022_MAX_TOTAL_SHUTTER_WIDTH ;
 int MT9V022_MAX_WIDTH ;
 int MT9V022_MIN_HEIGHT ;
 int MT9V022_MIN_WIDTH ;
 int MT9V022_ROW_SKIP ;
 int MT9V022_ROW_START ;
 int MT9V022_TOTAL_SHUTTER_WIDTH ;
 int MT9V022_VERTICAL_BLANKING ;
 int MT9V022_WINDOW_HEIGHT ;
 int MT9V022_WINDOW_WIDTH ;
 int dev_dbg (int *,char*,int,int) ;
 scalar_t__ mt9v022_colour_fmts ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 int soc_camera_limit_side (int*,int*,int ,int ,int ) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_s_crop(struct v4l2_subdev *sd, struct v4l2_crop *a)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);
 struct v4l2_rect rect = a->c;
 int ret;


 if (mt9v022->fmts == mt9v022_colour_fmts) {
  rect.width = ALIGN(rect.width, 2);
  rect.height = ALIGN(rect.height, 2);

 }

 soc_camera_limit_side(&rect.left, &rect.width,
       MT9V022_COLUMN_SKIP, MT9V022_MIN_WIDTH, MT9V022_MAX_WIDTH);

 soc_camera_limit_side(&rect.top, &rect.height,
       MT9V022_ROW_SKIP, MT9V022_MIN_HEIGHT, MT9V022_MAX_HEIGHT);


 ret = reg_read(client, MT9V022_AEC_AGC_ENABLE);
 if (ret >= 0) {
  if (ret & 1)
   ret = reg_write(client, MT9V022_MAX_TOTAL_SHUTTER_WIDTH,
     rect.height + mt9v022->y_skip_top + 43);
  else
   ret = reg_write(client, MT9V022_TOTAL_SHUTTER_WIDTH,
     rect.height + mt9v022->y_skip_top + 43);
 }

 if (!ret)
  ret = reg_write(client, MT9V022_COLUMN_START, rect.left);
 if (!ret)
  ret = reg_write(client, MT9V022_ROW_START, rect.top);
 if (!ret)




  ret = reg_write(client, MT9V022_HORIZONTAL_BLANKING,
    rect.width > 660 - 43 ? 43 :
    660 - rect.width);
 if (!ret)
  ret = reg_write(client, MT9V022_VERTICAL_BLANKING, 45);
 if (!ret)
  ret = reg_write(client, MT9V022_WINDOW_WIDTH, rect.width);
 if (!ret)
  ret = reg_write(client, MT9V022_WINDOW_HEIGHT,
    rect.height + mt9v022->y_skip_top);

 if (ret < 0)
  return ret;

 dev_dbg(&client->dev, "Frame %dx%d pixel\n", rect.width, rect.height);

 mt9v022->rect = rect;

 return 0;
}
