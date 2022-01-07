
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
typedef int pm_message_t ;


 int tpm_pm_suspend (int *,int ) ;

__attribute__((used)) static int tpm_tis_suspend(struct platform_device *dev, pm_message_t msg)
{
 return tpm_pm_suspend(&dev->dev, msg);
}
