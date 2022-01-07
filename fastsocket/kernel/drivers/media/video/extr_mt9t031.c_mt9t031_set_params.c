
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct v4l2_rect {int left; int top; int width; int height; } ;
struct v4l2_queryctrl {unsigned int maximum; unsigned int minimum; } ;
struct mt9t031 {int yskip; int xskip; int y_skip_top; unsigned int exposure; struct v4l2_rect rect; scalar_t__ autoexposure; } ;
struct i2c_client {int dev; } ;


 int MT9T031_COLUMN_ADDRESS_MODE ;
 int MT9T031_COLUMN_SKIP ;
 int MT9T031_COLUMN_START ;
 size_t MT9T031_CTRL_EXPOSURE ;
 int MT9T031_HORIZONTAL_BLANK ;
 int MT9T031_HORIZONTAL_BLANKING ;
 int MT9T031_MAX_HEIGHT ;
 int MT9T031_OUTPUT_CONTROL ;
 int MT9T031_ROW_ADDRESS_MODE ;
 int MT9T031_ROW_START ;
 int MT9T031_VERTICAL_BLANK ;
 int MT9T031_VERTICAL_BLANKING ;
 int MT9T031_WINDOW_HEIGHT ;
 int MT9T031_WINDOW_WIDTH ;
 int dev_dbg (int *,char*,int,int,...) ;
 int min (int,int) ;
 struct v4l2_queryctrl* mt9t031_controls ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_set (struct i2c_client*,int ,int) ;
 int reg_write (struct i2c_client*,int ,int const) ;
 int roundup (int ,int) ;
 int set_shutter (struct i2c_client*,unsigned int) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;

__attribute__((used)) static int mt9t031_set_params(struct i2c_client *client,
         struct v4l2_rect *rect, u16 xskip, u16 yskip)
{
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 int ret;
 u16 xbin, ybin;
 const u16 hblank = MT9T031_HORIZONTAL_BLANK,
  vblank = MT9T031_VERTICAL_BLANK;

 xbin = min(xskip, (u16)3);
 ybin = min(yskip, (u16)3);
 switch (xbin) {
 case 1:
  rect->left &= ~1;
  break;
 case 2:
  rect->left &= ~3;
  break;
 case 3:
  rect->left = rect->left > roundup(MT9T031_COLUMN_SKIP, 6) ?
   (rect->left / 6) * 6 : roundup(MT9T031_COLUMN_SKIP, 6);
 }

 rect->top &= ~1;

 dev_dbg(&client->dev, "skip %u:%u, rect %ux%u@%u:%u\n",
  xskip, yskip, rect->width, rect->height, rect->left, rect->top);


 ret = reg_set(client, MT9T031_OUTPUT_CONTROL, 1);
 if (ret < 0)
  return ret;


 ret = reg_write(client, MT9T031_HORIZONTAL_BLANKING, hblank);
 if (ret >= 0)
  ret = reg_write(client, MT9T031_VERTICAL_BLANKING, vblank);

 if (yskip != mt9t031->yskip || xskip != mt9t031->xskip) {

  if (ret >= 0)
   ret = reg_write(client, MT9T031_COLUMN_ADDRESS_MODE,
     ((xbin - 1) << 4) | (xskip - 1));
  if (ret >= 0)
   ret = reg_write(client, MT9T031_ROW_ADDRESS_MODE,
     ((ybin - 1) << 4) | (yskip - 1));
 }
 dev_dbg(&client->dev, "new physical left %u, top %u\n",
  rect->left, rect->top);





 if (ret >= 0)
  ret = reg_write(client, MT9T031_COLUMN_START, rect->left);
 if (ret >= 0)
  ret = reg_write(client, MT9T031_ROW_START, rect->top);
 if (ret >= 0)
  ret = reg_write(client, MT9T031_WINDOW_WIDTH, rect->width - 1);
 if (ret >= 0)
  ret = reg_write(client, MT9T031_WINDOW_HEIGHT,
    rect->height + mt9t031->y_skip_top - 1);
 if (ret >= 0 && mt9t031->autoexposure) {
  unsigned int total_h = rect->height + mt9t031->y_skip_top + vblank;
  ret = set_shutter(client, total_h);
  if (ret >= 0) {
   const u32 shutter_max = MT9T031_MAX_HEIGHT + vblank;
   const struct v4l2_queryctrl *qctrl =
    &mt9t031_controls[MT9T031_CTRL_EXPOSURE];
   mt9t031->exposure = (shutter_max / 2 + (total_h - 1) *
     (qctrl->maximum - qctrl->minimum)) /
    shutter_max + qctrl->minimum;
  }
 }


 if (ret >= 0)
  ret = reg_clear(client, MT9T031_OUTPUT_CONTROL, 1);

 if (ret >= 0) {
  mt9t031->rect = *rect;
  mt9t031->xskip = xskip;
  mt9t031->yskip = yskip;
 }

 return ret < 0 ? ret : 0;
}
