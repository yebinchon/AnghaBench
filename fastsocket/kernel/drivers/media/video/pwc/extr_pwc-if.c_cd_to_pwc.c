
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct pwc_device {int dummy; } ;
struct device {int dummy; } ;


 struct video_device* to_video_device (struct device*) ;
 struct pwc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static struct pwc_device *cd_to_pwc(struct device *cd)
{
 struct video_device *vdev = to_video_device(cd);
 return video_get_drvdata(vdev);
}
