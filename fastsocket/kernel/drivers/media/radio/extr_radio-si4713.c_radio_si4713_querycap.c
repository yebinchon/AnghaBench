
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int card; int driver; } ;
struct radio_si4713_device {int dummy; } ;
struct file {int dummy; } ;


 int V4L2_CAP_MODULATOR ;
 int V4L2_CAP_RDS_OUTPUT ;
 int strlcpy (int ,char*,int) ;
 int video_devdata (struct file*) ;
 struct radio_si4713_device* video_get_drvdata (int ) ;

__attribute__((used)) static int radio_si4713_querycap(struct file *file, void *priv,
     struct v4l2_capability *capability)
{
 struct radio_si4713_device *rsdev;

 rsdev = video_get_drvdata(video_devdata(file));

 strlcpy(capability->driver, "radio-si4713", sizeof(capability->driver));
 strlcpy(capability->card, "Silicon Labs Si4713 Modulator",
    sizeof(capability->card));
 capability->capabilities = V4L2_CAP_MODULATOR | V4L2_CAP_RDS_OUTPUT;

 return 0;
}
