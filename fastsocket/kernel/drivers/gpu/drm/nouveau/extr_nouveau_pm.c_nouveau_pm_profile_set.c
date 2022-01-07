
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_pm_profile {int dummy; } ;
struct nouveau_pm {struct nouveau_pm_profile* profile_dc; struct nouveau_pm_profile* profile_ac; } ;
struct drm_device {int dummy; } ;
typedef int string ;


 int EINVAL ;
 int EPERM ;
 int nouveau_perflvl_wr ;
 struct nouveau_pm* nouveau_pm (struct drm_device*) ;
 int nouveau_pm_trigger (struct drm_device*) ;
 struct nouveau_pm_profile* profile_find (struct drm_device*,char*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char const*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
nouveau_pm_profile_set(struct drm_device *dev, const char *profile)
{
 struct nouveau_pm *pm = nouveau_pm(dev);
 struct nouveau_pm_profile *ac = ((void*)0), *dc = ((void*)0);
 char string[16], *cur = string, *ptr;


 if (nouveau_perflvl_wr != 7777)
  return -EPERM;

 strncpy(string, profile, sizeof(string));
 string[sizeof(string) - 1] = 0;
 if ((ptr = strchr(string, '\n')))
  *ptr = '\0';

 ptr = strsep(&cur, ",");
 if (ptr)
  ac = profile_find(dev, ptr);

 ptr = strsep(&cur, ",");
 if (ptr)
  dc = profile_find(dev, ptr);
 else
  dc = ac;

 if (ac == ((void*)0) || dc == ((void*)0))
  return -EINVAL;

 pm->profile_ac = ac;
 pm->profile_dc = dc;
 nouveau_pm_trigger(dev);
 return 0;
}
