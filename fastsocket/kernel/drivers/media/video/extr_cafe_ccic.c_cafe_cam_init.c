
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int type; } ;
struct v4l2_dbg_chip_ident {scalar_t__ ident; TYPE_1__ match; } ;
struct cafe_camera {scalar_t__ state; scalar_t__ sensor_type; int s_mutex; int sensor_addr; } ;


 int EINVAL ;
 scalar_t__ S_IDLE ;
 scalar_t__ S_NOTREADY ;
 int V4L2_CHIP_MATCH_I2C_ADDR ;
 scalar_t__ V4L2_IDENT_NONE ;
 scalar_t__ V4L2_IDENT_OV7670 ;
 int __cafe_cam_reset (struct cafe_camera*) ;
 int cafe_ctlr_power_down (struct cafe_camera*) ;
 int cam_err (struct cafe_camera*,char*,scalar_t__) ;
 int cam_warn (struct cafe_camera*,char*,scalar_t__) ;
 int core ;
 int g_chip_ident ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_dbg_chip_ident*) ;

__attribute__((used)) static int cafe_cam_init(struct cafe_camera *cam)
{
 struct v4l2_dbg_chip_ident chip;
 int ret;

 mutex_lock(&cam->s_mutex);
 if (cam->state != S_NOTREADY)
  cam_warn(cam, "Cam init with device in funky state %d",
    cam->state);
 ret = __cafe_cam_reset(cam);
 if (ret)
  goto out;
 chip.ident = V4L2_IDENT_NONE;
 chip.match.type = V4L2_CHIP_MATCH_I2C_ADDR;
 chip.match.addr = cam->sensor_addr;
 ret = sensor_call(cam, core, g_chip_ident, &chip);
 if (ret)
  goto out;
 cam->sensor_type = chip.ident;
 if (cam->sensor_type != V4L2_IDENT_OV7670) {
  cam_err(cam, "Unsupported sensor type 0x%x", cam->sensor_type);
  ret = -EINVAL;
  goto out;
 }

 ret = 0;
 cam->state = S_IDLE;
  out:
 cafe_ctlr_power_down(cam);
 mutex_unlock(&cam->s_mutex);
 return ret;
}
