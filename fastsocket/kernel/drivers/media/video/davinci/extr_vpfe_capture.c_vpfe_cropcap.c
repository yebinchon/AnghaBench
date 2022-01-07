
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vpfe_device {size_t std_index; int v4l2_dev; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_5__ {int height; int width; } ;
struct v4l2_cropcap {int pixelaspect; TYPE_2__ defrect; TYPE_1__ bounds; int type; } ;
struct file {int dummy; } ;
struct TYPE_7__ {int pixelaspect; int height; int width; } ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int debug ;
 int memset (struct v4l2_cropcap*,int ,int) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 TYPE_3__* vpfe_standards ;

__attribute__((used)) static int vpfe_cropcap(struct file *file, void *priv,
         struct v4l2_cropcap *crop)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_cropcap\n");

 if (vpfe_dev->std_index > ARRAY_SIZE(vpfe_standards))
  return -EINVAL;

 memset(crop, 0, sizeof(struct v4l2_cropcap));
 crop->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 crop->bounds.width = crop->defrect.width =
  vpfe_standards[vpfe_dev->std_index].width;
 crop->bounds.height = crop->defrect.height =
  vpfe_standards[vpfe_dev->std_index].height;
 crop->pixelaspect = vpfe_standards[vpfe_dev->std_index].pixelaspect;
 return 0;
}
