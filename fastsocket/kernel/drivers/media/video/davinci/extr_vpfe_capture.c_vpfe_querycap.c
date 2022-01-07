
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_device {TYPE_1__* cfg; int v4l2_dev; } ;
struct v4l2_capability {int capabilities; int card; int bus_info; int driver; int version; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* card_name; } ;


 char* CAPTURE_DRV_NAME ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VPFE_CAPTURE_VERSION_CODE ;
 int debug ;
 int strlcpy (int ,char*,int) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vpfe_querycap(struct file *file, void *priv,
          struct v4l2_capability *cap)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querycap\n");

 cap->version = VPFE_CAPTURE_VERSION_CODE;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
 strlcpy(cap->driver, CAPTURE_DRV_NAME, sizeof(cap->driver));
 strlcpy(cap->bus_info, "VPFE", sizeof(cap->bus_info));
 strlcpy(cap->card, vpfe_dev->cfg->card_name, sizeof(cap->card));
 return 0;
}
