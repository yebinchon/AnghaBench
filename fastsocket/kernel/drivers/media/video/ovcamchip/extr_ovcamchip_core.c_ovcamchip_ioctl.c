
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ovcamchip {int initialized; int subtype; int mono; TYPE_1__* sops; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct i2c_client*) ;long (* command ) (struct i2c_client*,unsigned int,void*) ;} ;


 int CC_OV7620 ;
 long EPERM ;


 int mono ;
 int stub1 (struct i2c_client*) ;
 long stub2 (struct i2c_client*,unsigned int,void*) ;
 struct ovcamchip* to_ovcamchip (struct v4l2_subdev*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*) ;
 int v4l2_warn (struct v4l2_subdev*,char*) ;

__attribute__((used)) static long ovcamchip_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
 struct ovcamchip *ov = to_ovcamchip(sd);
 struct i2c_client *c = v4l2_get_subdevdata(sd);

 if (!ov->initialized &&
     cmd != 128 &&
     cmd != 129) {
  v4l2_err(sd, "Camera chip not initialized yet!\n");
  return -EPERM;
 }

 switch (cmd) {
 case 128:
 {
  *(int *)arg = ov->subtype;
  return 0;
 }
 case 129:
 {
  int rc;

  if (mono == -1)
   ov->mono = *(int *)arg;
  else
   ov->mono = mono;

  if (ov->mono) {
   if (ov->subtype != CC_OV7620)
    v4l2_warn(sd, "Monochrome not "
     "implemented for this chip\n");
   else
    v4l2_info(sd, "Initializing chip as "
     "monochrome\n");
  }

  rc = ov->sops->init(c);
  if (rc < 0)
   return rc;

  ov->initialized = 1;
  return 0;
 }
 default:
  return ov->sops->command(c, cmd, arg);
 }
}
