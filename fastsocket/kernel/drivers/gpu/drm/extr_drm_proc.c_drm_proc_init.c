
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_2__ {int list; } ;
struct drm_minor {int * proc_root; TYPE_1__ proc_nodes; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_PROC_ENTRIES ;
 int INIT_LIST_HEAD (int *) ;
 int drm_proc_create_files (int ,int ,int *,struct drm_minor*) ;
 int drm_proc_list ;
 int * proc_mkdir (char*,struct proc_dir_entry*) ;
 int remove_proc_entry (char*,struct proc_dir_entry*) ;
 int sprintf (char*,char*,int) ;

int drm_proc_init(struct drm_minor *minor, int minor_id,
    struct proc_dir_entry *root)
{
 char name[64];
 int ret;

 INIT_LIST_HEAD(&minor->proc_nodes.list);
 sprintf(name, "%d", minor_id);
 minor->proc_root = proc_mkdir(name, root);
 if (!minor->proc_root) {
  DRM_ERROR("Cannot create /proc/dri/%s\n", name);
  return -1;
 }

 ret = drm_proc_create_files(drm_proc_list, DRM_PROC_ENTRIES,
        minor->proc_root, minor);
 if (ret) {
  remove_proc_entry(name, root);
  minor->proc_root = ((void*)0);
  DRM_ERROR("Failed to create core drm proc files\n");
  return ret;
 }

 return 0;
}
