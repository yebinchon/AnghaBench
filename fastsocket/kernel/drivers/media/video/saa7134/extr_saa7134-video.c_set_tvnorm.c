
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_tvnorm {int vbi_v_stop_0; int video_v_start; int id; int video_v_stop; scalar_t__ h_start; scalar_t__ h_stop; int name; } ;
struct TYPE_4__ {int top; int height; scalar_t__ width; scalar_t__ left; } ;
struct TYPE_3__ {int top; int height; scalar_t__ width; scalar_t__ left; } ;
struct saa7134_dev {TYPE_2__ crop_defrect; TYPE_2__ crop_current; TYPE_1__ crop_bounds; struct saa7134_tvnorm* tvnorm; } ;


 int V4L2_STD_525_60 ;
 int dprintk (char*,int ) ;
 int saa7134_set_tvnorm_hw (struct saa7134_dev*) ;

__attribute__((used)) static void set_tvnorm(struct saa7134_dev *dev, struct saa7134_tvnorm *norm)
{
 dprintk("set tv norm = %s\n",norm->name);
 dev->tvnorm = norm;


 dev->crop_bounds.left = norm->h_start;
 dev->crop_defrect.left = norm->h_start;
 dev->crop_bounds.width = norm->h_stop - norm->h_start +1;
 dev->crop_defrect.width = norm->h_stop - norm->h_start +1;

 dev->crop_bounds.top = (norm->vbi_v_stop_0+1)*2;
 dev->crop_defrect.top = norm->video_v_start*2;
 dev->crop_bounds.height = ((norm->id & V4L2_STD_525_60) ? 524 : 624)
  - dev->crop_bounds.top;
 dev->crop_defrect.height = (norm->video_v_stop - norm->video_v_start +1)*2;

 dev->crop_current = dev->crop_defrect;

 saa7134_set_tvnorm_hw(dev);
}
