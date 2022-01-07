
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int agc; int sharpness; int picture; int quality; int framerate; } ;
struct TYPE_4__ {int brightness; int hue; int contrast; int colour; } ;
struct TYPE_6__ {int lock; TYPE_2__ params; TYPE_1__ picture; } ;


 int EINVAL ;
 TYPE_3__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *fh, struct v4l2_control *c)
{
 mutex_lock(&meye.lock);
 switch (c->id) {
 case 136:
  c->value = meye.picture.brightness >> 10;
  break;
 case 133:
  c->value = meye.picture.hue >> 10;
  break;
 case 135:
  c->value = meye.picture.contrast >> 10;
  break;
 case 129:
  c->value = meye.picture.colour >> 10;
  break;
 case 137:
  c->value = meye.params.agc;
  break;
 case 128:
 case 131:
  c->value = meye.params.sharpness;
  break;
 case 130:
  c->value = meye.params.picture;
  break;
 case 132:
  c->value = meye.params.quality;
  break;
 case 134:
  c->value = meye.params.framerate;
  break;
 default:
  mutex_unlock(&meye.lock);
  return -EINVAL;
 }
 mutex_unlock(&meye.lock);

 return 0;
}
