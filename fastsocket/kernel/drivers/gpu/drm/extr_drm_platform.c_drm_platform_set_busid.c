
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_master {int unique_len; int unique_size; char* unique; } ;
struct drm_device {TYPE_1__* platformdev; int * devname; } ;
struct TYPE_2__ {char* name; int id; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* kmalloc (int,int ) ;
 int snprintf (char*,int,char*,char*,int) ;
 int sprintf (int *,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int drm_platform_set_busid(struct drm_device *dev, struct drm_master *master)
{
 int len, ret, id;

 master->unique_len = 13 + strlen(dev->platformdev->name);
 master->unique_size = master->unique_len;
 master->unique = kmalloc(master->unique_len + 1, GFP_KERNEL);

 if (master->unique == ((void*)0))
  return -ENOMEM;

 id = dev->platformdev->id;




 if (id == -1)
  id = 0;

 len = snprintf(master->unique, master->unique_len,
   "platform:%s:%02d", dev->platformdev->name, id);

 if (len > master->unique_len) {
  DRM_ERROR("Unique buffer overflowed\n");
  ret = -EINVAL;
  goto err;
 }

 dev->devname =
  kmalloc(strlen(dev->platformdev->name) +
   master->unique_len + 2, GFP_KERNEL);

 if (dev->devname == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }

 sprintf(dev->devname, "%s@%s", dev->platformdev->name,
  master->unique);
 return 0;
err:
 return ret;
}
