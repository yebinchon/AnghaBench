
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_platform_info {int dummy; } ;
struct soc_camera_device {int dummy; } ;
struct TYPE_2__ {struct soc_camera_platform_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct platform_device* to_platform_device (int ) ;
 int to_soc_camera_control (struct soc_camera_device*) ;

__attribute__((used)) static struct soc_camera_platform_info *get_info(struct soc_camera_device *icd)
{
 struct platform_device *pdev =
  to_platform_device(to_soc_camera_control(icd));
 return pdev->dev.platform_data;
}
