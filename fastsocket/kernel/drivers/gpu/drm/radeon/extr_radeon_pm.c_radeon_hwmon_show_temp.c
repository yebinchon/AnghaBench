
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_thermal_type; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;






 int evergreen_get_temp (struct radeon_device*) ;
 struct drm_device* pci_get_drvdata (int ) ;
 int rv6xx_get_temp (struct radeon_device*) ;
 int rv770_get_temp (struct radeon_device*) ;
 int si_get_temp (struct radeon_device*) ;
 int snprintf (char*,int ,char*,int) ;
 int sumo_get_temp (struct radeon_device*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t radeon_hwmon_show_temp(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct drm_device *ddev = pci_get_drvdata(to_pci_dev(dev));
 struct radeon_device *rdev = ddev->dev_private;
 int temp;

 switch (rdev->pm.int_thermal_type) {
 case 131:
  temp = rv6xx_get_temp(rdev);
  break;
 case 130:
  temp = rv770_get_temp(rdev);
  break;
 case 133:
 case 132:
  temp = evergreen_get_temp(rdev);
  break;
 case 128:
  temp = sumo_get_temp(rdev);
  break;
 case 129:
  temp = si_get_temp(rdev);
  break;
 default:
  temp = 0;
  break;
 }

 return snprintf(buf, PAGE_SIZE, "%d\n", temp);
}
