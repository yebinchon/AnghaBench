
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pm_method; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int PM_METHOD_DYNPM ;
 struct drm_device* pci_get_drvdata (int ) ;
 int snprintf (char*,int ,char*,char*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t radeon_get_pm_method(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct drm_device *ddev = pci_get_drvdata(to_pci_dev(dev));
 struct radeon_device *rdev = ddev->dev_private;
 int pm = rdev->pm.pm_method;

 return snprintf(buf, PAGE_SIZE, "%s\n",
   (pm == PM_METHOD_DYNPM) ? "dynpm" : "profile");
}
