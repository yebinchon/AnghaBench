
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dummy; } ;


 int NOUVEAU_DEBUGFS_ENTRIES ;
 int drm_debugfs_remove_files (int ,int ,struct drm_minor*) ;
 int nouveau_debugfs_list ;

void
nouveau_debugfs_takedown(struct drm_minor *minor)
{
 drm_debugfs_remove_files(nouveau_debugfs_list, NOUVEAU_DEBUGFS_ENTRIES,
     minor);
}
