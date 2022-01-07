
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int REG_AFE_GAIN_CTRL ;
 int REG_AVID_START_PIXEL_LSB ;
 int REG_AVID_START_PIXEL_MSB ;
 int REG_AVID_STOP_PIXEL_LSB ;
 int REG_AVID_STOP_PIXEL_MSB ;
 int REG_BRIGHTNESS ;
 int REG_CHROMA_CONTROL1 ;
 int REG_CHROMA_CONTROL2 ;
 int REG_CLEAR_LOST_LOCK ;
 int REG_COLOR_KILLER ;
 int REG_COMP_PB_SATURATION ;
 int REG_COMP_PR_SATURATION ;
 int REG_COMP_Y_BRIGHTNESS ;
 int REG_COMP_Y_CONTRAST ;
 int REG_CONTRAST ;
 int REG_HSYNC_START_PIXEL_LSB ;
 int REG_HSYNC_START_PIXEL_MSB ;
 int REG_HSYNC_STOP_PIXEL_LSB ;
 int REG_HSYNC_STOP_PIXEL_MSB ;
 int REG_HUE ;
 int REG_INPUT_SEL ;
 int REG_LUMA_CONTROL1 ;
 int REG_LUMA_CONTROL2 ;
 int REG_LUMA_CONTROL3 ;
 int REG_OPERATION_MODE ;
 int REG_OUTPUT_FORMATTER1 ;
 int REG_OUTPUT_FORMATTER2 ;
 int REG_OUTPUT_FORMATTER3 ;
 int REG_OUTPUT_FORMATTER4 ;
 int REG_OUTPUT_FORMATTER5 ;
 int REG_OUTPUT_FORMATTER6 ;
 int REG_SATURATION ;
 int REG_SYNC_CONTROL ;
 int REG_VBLK_START_LINE_LSB ;
 int REG_VBLK_START_LINE_MSB ;
 int REG_VBLK_STOP_LINE_LSB ;
 int REG_VBLK_STOP_LINE_MSB ;
 int REG_VIDEO_STD ;
 int REG_VSYNC_START_LINE_LSB ;
 int REG_VSYNC_START_LINE_MSB ;
 int REG_VSYNC_STOP_LINE_LSB ;
 int REG_VSYNC_STOP_LINE_MSB ;
 int dump_reg (struct v4l2_subdev*,int ) ;

__attribute__((used)) static void tvp514x_reg_dump(struct v4l2_subdev *sd)
{
 dump_reg(sd, REG_INPUT_SEL);
 dump_reg(sd, REG_AFE_GAIN_CTRL);
 dump_reg(sd, REG_VIDEO_STD);
 dump_reg(sd, REG_OPERATION_MODE);
 dump_reg(sd, REG_COLOR_KILLER);
 dump_reg(sd, REG_LUMA_CONTROL1);
 dump_reg(sd, REG_LUMA_CONTROL2);
 dump_reg(sd, REG_LUMA_CONTROL3);
 dump_reg(sd, REG_BRIGHTNESS);
 dump_reg(sd, REG_CONTRAST);
 dump_reg(sd, REG_SATURATION);
 dump_reg(sd, REG_HUE);
 dump_reg(sd, REG_CHROMA_CONTROL1);
 dump_reg(sd, REG_CHROMA_CONTROL2);
 dump_reg(sd, REG_COMP_PR_SATURATION);
 dump_reg(sd, REG_COMP_Y_CONTRAST);
 dump_reg(sd, REG_COMP_PB_SATURATION);
 dump_reg(sd, REG_COMP_Y_BRIGHTNESS);
 dump_reg(sd, REG_AVID_START_PIXEL_LSB);
 dump_reg(sd, REG_AVID_START_PIXEL_MSB);
 dump_reg(sd, REG_AVID_STOP_PIXEL_LSB);
 dump_reg(sd, REG_AVID_STOP_PIXEL_MSB);
 dump_reg(sd, REG_HSYNC_START_PIXEL_LSB);
 dump_reg(sd, REG_HSYNC_START_PIXEL_MSB);
 dump_reg(sd, REG_HSYNC_STOP_PIXEL_LSB);
 dump_reg(sd, REG_HSYNC_STOP_PIXEL_MSB);
 dump_reg(sd, REG_VSYNC_START_LINE_LSB);
 dump_reg(sd, REG_VSYNC_START_LINE_MSB);
 dump_reg(sd, REG_VSYNC_STOP_LINE_LSB);
 dump_reg(sd, REG_VSYNC_STOP_LINE_MSB);
 dump_reg(sd, REG_VBLK_START_LINE_LSB);
 dump_reg(sd, REG_VBLK_START_LINE_MSB);
 dump_reg(sd, REG_VBLK_STOP_LINE_LSB);
 dump_reg(sd, REG_VBLK_STOP_LINE_MSB);
 dump_reg(sd, REG_SYNC_CONTROL);
 dump_reg(sd, REG_OUTPUT_FORMATTER1);
 dump_reg(sd, REG_OUTPUT_FORMATTER2);
 dump_reg(sd, REG_OUTPUT_FORMATTER3);
 dump_reg(sd, REG_OUTPUT_FORMATTER4);
 dump_reg(sd, REG_OUTPUT_FORMATTER5);
 dump_reg(sd, REG_OUTPUT_FORMATTER6);
 dump_reg(sd, REG_CLEAR_LOST_LOCK);
}
