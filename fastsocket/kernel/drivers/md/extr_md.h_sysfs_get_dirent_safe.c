
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;


 struct sysfs_dirent* sysfs_get_dirent (struct sysfs_dirent*,char*) ;

__attribute__((used)) static inline struct sysfs_dirent *sysfs_get_dirent_safe(struct sysfs_dirent *sd, char *name)
{
 if (sd)
  return sysfs_get_dirent(sd, name);
 return sd;
}
