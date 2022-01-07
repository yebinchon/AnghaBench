
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int mode; int clock_curr; int clock_min; int clock_max; int nobt_vs_inv; int nobt_hs_inv; int latch_clk_inv; int swap; int bt_sync_correct; int frame_start_on_rising_vs; } ;
struct TYPE_6__ {TYPE_1__ bt656; } ;
struct v4l2_ifparm {int if_type; TYPE_2__ u; } ;
struct TYPE_7__ {int xclk; } ;
struct TYPE_8__ {TYPE_3__ bt656; } ;
struct omap24xxcam_device {int if_type; int dev; TYPE_4__ if_u; int cc_ctrl; int sdev; } ;


 int CAM_MCLK ;
 int CC_CTRL_BT_CORRECT ;
 int CC_CTRL_CC_EN ;
 int CC_CTRL_NOBT_HS_POL ;
 int CC_CTRL_NOBT_SYNCHRO ;
 int CC_CTRL_NOBT_VS_POL ;
 int CC_CTRL_PAR_CLK_POL ;
 int CC_CTRL_PAR_MODE_BT10 ;
 int CC_CTRL_PAR_MODE_BT8 ;
 int CC_CTRL_PAR_MODE_NOBT10 ;
 int CC_CTRL_PAR_MODE_NOBT12 ;
 int CC_CTRL_PAR_MODE_NOBT8 ;
 int CC_CTRL_PAR_ORDERCAM ;
 int EINVAL ;






 int dev_err (int ,char*,int) ;
 int omap24xxcam_core_xclk_set (struct omap24xxcam_device*,int) ;
 int vidioc_int_g_ifparm (int ,struct v4l2_ifparm*) ;

__attribute__((used)) static int omap24xxcam_sensor_if_enable(struct omap24xxcam_device *cam)
{
 int rval;
 struct v4l2_ifparm p;

 rval = vidioc_int_g_ifparm(cam->sdev, &p);
 if (rval) {
  dev_err(cam->dev, "vidioc_int_g_ifparm failed with %d\n", rval);
  return rval;
 }

 cam->if_type = p.if_type;

 cam->cc_ctrl = CC_CTRL_CC_EN;

 switch (p.if_type) {
 case 133:
  if (p.u.bt656.frame_start_on_rising_vs)
   cam->cc_ctrl |= CC_CTRL_NOBT_SYNCHRO;
  if (p.u.bt656.bt_sync_correct)
   cam->cc_ctrl |= CC_CTRL_BT_CORRECT;
  if (p.u.bt656.swap)
   cam->cc_ctrl |= CC_CTRL_PAR_ORDERCAM;
  if (p.u.bt656.latch_clk_inv)
   cam->cc_ctrl |= CC_CTRL_PAR_CLK_POL;
  if (p.u.bt656.nobt_hs_inv)
   cam->cc_ctrl |= CC_CTRL_NOBT_HS_POL;
  if (p.u.bt656.nobt_vs_inv)
   cam->cc_ctrl |= CC_CTRL_NOBT_VS_POL;

  switch (p.u.bt656.mode) {
  case 128:
   cam->cc_ctrl |= CC_CTRL_PAR_MODE_NOBT8;
   break;
  case 130:
   cam->cc_ctrl |= CC_CTRL_PAR_MODE_NOBT10;
   break;
  case 129:
   cam->cc_ctrl |= CC_CTRL_PAR_MODE_NOBT12;
   break;
  case 131:
   cam->cc_ctrl |= CC_CTRL_PAR_MODE_BT8;
   break;
  case 132:
   cam->cc_ctrl |= CC_CTRL_PAR_MODE_BT10;
   break;
  default:
   dev_err(cam->dev,
    "bt656 interface mode %d not supported\n",
    p.u.bt656.mode);
   return -EINVAL;
  }





  if (p.u.bt656.clock_curr != cam->if_u.bt656.xclk) {
   u32 xclk = p.u.bt656.clock_curr;
   u32 divisor;

   if (xclk == 0)
    return -EINVAL;

   if (xclk > CAM_MCLK)
    xclk = CAM_MCLK;

   divisor = CAM_MCLK / xclk;
   if (divisor * xclk < CAM_MCLK)
    divisor++;
   if (CAM_MCLK / divisor < p.u.bt656.clock_min
       && divisor > 1)
    divisor--;
   if (divisor > 30)
    divisor = 30;

   xclk = CAM_MCLK / divisor;

   if (xclk < p.u.bt656.clock_min
       || xclk > p.u.bt656.clock_max)
    return -EINVAL;

   cam->if_u.bt656.xclk = xclk;
  }
  omap24xxcam_core_xclk_set(cam, cam->if_u.bt656.xclk);
  break;
 default:

  dev_err(cam->dev, "interface type %d not supported\n",
   p.if_type);
  return -EINVAL;
 }

 return 0;
}
