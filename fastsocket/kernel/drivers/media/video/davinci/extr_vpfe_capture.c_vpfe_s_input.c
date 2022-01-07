
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vpfe_subdev_info {int ccdc_if_params; int grp_id; scalar_t__ can_route; struct vpfe_route* routes; } ;
struct vpfe_route {int output; int input; } ;
struct vpfe_device {unsigned int current_input; size_t std_index; int lock; struct vpfe_subdev_info* current_subdev; int v4l2_dev; TYPE_1__* cfg; scalar_t__ started; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int (* set_hw_if_params ) (int *) ;} ;
struct TYPE_8__ {TYPE_2__ hw_ops; } ;
struct TYPE_7__ {int std_id; } ;
struct TYPE_5__ {struct vpfe_subdev_info* sub_devs; } ;


 int EBUSY ;
 int EINVAL ;
 TYPE_4__* ccdc_dev ;
 int debug ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_routing ;
 int stub1 (int *) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,int ,int ,int ) ;
 int v4l2_err (int *,char*) ;
 int video ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_config_image_format (struct vpfe_device*,int *) ;
 scalar_t__ vpfe_get_subdev_input_index (struct vpfe_device*,int*,int*,unsigned int) ;
 TYPE_3__* vpfe_standards ;

__attribute__((used)) static int vpfe_s_input(struct file *file, void *priv, unsigned int index)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_subdev_info *sdinfo;
 int subdev_index, inp_index;
 struct vpfe_route *route;
 u32 input = 0, output = 0;
 int ret = -EINVAL;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_input\n");

 ret = mutex_lock_interruptible(&vpfe_dev->lock);
 if (ret)
  return ret;





 if (vpfe_dev->started) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Streaming is on\n");
  ret = -EBUSY;
  goto unlock_out;
 }

 if (vpfe_get_subdev_input_index(vpfe_dev,
     &subdev_index,
     &inp_index,
     index) < 0) {
  v4l2_err(&vpfe_dev->v4l2_dev, "invalid input index\n");
  goto unlock_out;
 }

 sdinfo = &vpfe_dev->cfg->sub_devs[subdev_index];
 route = &sdinfo->routes[inp_index];
 if (route && sdinfo->can_route) {
  input = route->input;
  output = route->output;
 }

 ret = v4l2_device_call_until_err(&vpfe_dev->v4l2_dev, sdinfo->grp_id,
      video, s_routing, input, output, 0);

 if (ret) {
  v4l2_err(&vpfe_dev->v4l2_dev,
   "vpfe_doioctl:error in setting input in decoder\n");
  ret = -EINVAL;
  goto unlock_out;
 }
 vpfe_dev->current_subdev = sdinfo;
 vpfe_dev->current_input = index;
 vpfe_dev->std_index = 0;


 ret = ccdc_dev->hw_ops.set_hw_if_params(&sdinfo->ccdc_if_params);
 if (ret)
  goto unlock_out;


 ret = vpfe_config_image_format(vpfe_dev,
    &vpfe_standards[vpfe_dev->std_index].std_id);
unlock_out:
 mutex_unlock(&vpfe_dev->lock);
 return ret;
}
