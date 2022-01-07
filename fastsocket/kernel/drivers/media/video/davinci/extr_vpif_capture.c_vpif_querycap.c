
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_capture_config {char* card_name; } ;
struct v4l2_capability {int capabilities; int card; int bus_info; int driver; int version; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpif_capture_config* platform_data; } ;


 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VPIF_CAPTURE_VERSION_CODE ;
 int strlcpy (int ,char*,int) ;
 TYPE_1__* vpif_dev ;

__attribute__((used)) static int vpif_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 struct vpif_capture_config *config = vpif_dev->platform_data;

 cap->version = VPIF_CAPTURE_VERSION_CODE;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
 strlcpy(cap->driver, "vpif capture", sizeof(cap->driver));
 strlcpy(cap->bus_info, "DM646x Platform", sizeof(cap->bus_info));
 strlcpy(cap->card, config->card_name, sizeof(cap->card));

 return 0;
}
