
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_platform_priv {int subdev; } ;
struct soc_camera_platform_info {int dev; } ;
struct soc_camera_device {int * ops; } ;
struct TYPE_2__ {struct soc_camera_platform_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct soc_camera_platform_priv* get_priv (struct platform_device*) ;
 int kfree (struct soc_camera_platform_priv*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 struct soc_camera_device* to_soc_camera_dev (int ) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int soc_camera_platform_remove(struct platform_device *pdev)
{
 struct soc_camera_platform_priv *priv = get_priv(pdev);
 struct soc_camera_platform_info *p = pdev->dev.platform_data;
 struct soc_camera_device *icd = to_soc_camera_dev(p->dev);

 v4l2_device_unregister_subdev(&priv->subdev);
 icd->ops = ((void*)0);
 platform_set_drvdata(pdev, ((void*)0));
 kfree(priv);
 return 0;
}
