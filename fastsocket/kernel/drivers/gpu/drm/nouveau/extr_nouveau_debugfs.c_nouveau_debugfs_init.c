
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int debugfs_root; } ;


 int NOUVEAU_DEBUGFS_ENTRIES ;
 int drm_debugfs_create_files (int ,int ,int ,struct drm_minor*) ;
 int nouveau_debugfs_list ;

int
nouveau_debugfs_init(struct drm_minor *minor)
{
 drm_debugfs_create_files(nouveau_debugfs_list, NOUVEAU_DEBUGFS_ENTRIES,
     minor->debugfs_root, minor);
 return 0;
}
