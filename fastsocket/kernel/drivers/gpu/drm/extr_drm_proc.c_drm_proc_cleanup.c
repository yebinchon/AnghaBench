
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct drm_minor {int index; int proc_root; } ;


 int DRM_PROC_ENTRIES ;
 int drm_proc_list ;
 int drm_proc_remove_files (int ,int ,struct drm_minor*) ;
 int remove_proc_entry (char*,struct proc_dir_entry*) ;
 int sprintf (char*,char*,int) ;

int drm_proc_cleanup(struct drm_minor *minor, struct proc_dir_entry *root)
{
 char name[64];

 if (!root || !minor->proc_root)
  return 0;

 drm_proc_remove_files(drm_proc_list, DRM_PROC_ENTRIES, minor);

 sprintf(name, "%d", minor->index);
 remove_proc_entry(name, root);

 return 0;
}
