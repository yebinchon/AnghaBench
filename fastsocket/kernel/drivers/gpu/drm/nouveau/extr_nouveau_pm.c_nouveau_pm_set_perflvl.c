
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int nouveau_pm_profile_set (struct drm_device*,char const*) ;
 struct drm_device* pci_get_drvdata (int ) ;
 int strlen (char const*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t
nouveau_pm_set_perflvl(struct device *d, struct device_attribute *a,
         const char *buf, size_t count)
{
 struct drm_device *dev = pci_get_drvdata(to_pci_dev(d));
 int ret;

 ret = nouveau_pm_profile_set(dev, buf);
 if (ret)
  return ret;
 return strlen(buf);
}
