
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int CADET_VERSION ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_RDS_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_TUNER ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
    struct v4l2_capability *v)
{
 strlcpy(v->driver, "ADS Cadet", sizeof(v->driver));
 strlcpy(v->card, "ADS Cadet", sizeof(v->card));
 strlcpy(v->bus_info, "ISA", sizeof(v->bus_info));
 v->version = CADET_VERSION;
 v->capabilities = V4L2_CAP_TUNER | V4L2_CAP_RADIO |
     V4L2_CAP_READWRITE | V4L2_CAP_RDS_CAPTURE;
 return 0;
}
