
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;


 int sysfs_notify_dirent (struct sysfs_dirent*) ;

__attribute__((used)) static inline void sysfs_notify_dirent_safe(struct sysfs_dirent *sd)
{
 if (sd)
  sysfs_notify_dirent(sd);
}
