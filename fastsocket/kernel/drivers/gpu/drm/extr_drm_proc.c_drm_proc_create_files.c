
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct proc_dir_entry {int name; } ;
struct TYPE_5__ {int list; } ;
struct drm_minor {int proc_root; TYPE_2__ proc_nodes; struct drm_device* dev; } ;
struct drm_info_node {int list; struct drm_info_list* info_ent; struct drm_minor* minor; } ;
struct drm_info_list {int driver_features; int name; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int driver_features; } ;


 int DRM_ERROR (char*,int ,int ) ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int drm_proc_fops ;
 TYPE_3__* drm_proc_list ;
 int kfree (struct drm_info_node*) ;
 struct drm_info_node* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 struct proc_dir_entry* proc_create_data (int ,int ,struct proc_dir_entry*,int *,struct drm_info_node*) ;
 int remove_proc_entry (int ,int ) ;

__attribute__((used)) static int drm_proc_create_files(struct drm_info_list *files, int count,
     struct proc_dir_entry *root, struct drm_minor *minor)
{
 struct drm_device *dev = minor->dev;
 struct proc_dir_entry *ent;
 struct drm_info_node *tmp;
 int i, ret;

 for (i = 0; i < count; i++) {
  u32 features = files[i].driver_features;

  if (features != 0 &&
      (dev->driver->driver_features & features) != features)
   continue;

  tmp = kmalloc(sizeof(struct drm_info_node), GFP_KERNEL);
  if (tmp == ((void*)0)) {
   ret = -1;
   goto fail;
  }
  tmp->minor = minor;
  tmp->info_ent = &files[i];
  list_add(&tmp->list, &minor->proc_nodes.list);

  ent = proc_create_data(files[i].name, S_IRUGO, root,
           &drm_proc_fops, tmp);
  if (!ent) {
   DRM_ERROR("Cannot create /proc/dri/%s/%s\n",
      root->name, files[i].name);
   list_del(&tmp->list);
   kfree(tmp);
   ret = -1;
   goto fail;
  }

 }
 return 0;

fail:
 for (i = 0; i < count; i++)
  remove_proc_entry(drm_proc_list[i].name, minor->proc_root);
 return ret;
}
