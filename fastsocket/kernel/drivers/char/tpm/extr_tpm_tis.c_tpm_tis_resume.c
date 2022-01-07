
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int tpm_pm_resume (int *) ;

__attribute__((used)) static int tpm_tis_resume(struct platform_device *dev)
{
 return tpm_pm_resume(&dev->dev);
}
