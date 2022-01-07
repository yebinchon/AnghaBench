
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_master {int * unique; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int (* set_busid ) (struct drm_device*,struct drm_master*) ;} ;


 int drm_unset_busid (struct drm_device*,struct drm_master*) ;
 int stub1 (struct drm_device*,struct drm_master*) ;

__attribute__((used)) static int drm_set_busid(struct drm_device *dev, struct drm_file *file_priv)
{
 struct drm_master *master = file_priv->master;
 int ret;

 if (master->unique != ((void*)0))
  drm_unset_busid(dev, master);

 ret = dev->driver->bus->set_busid(dev, master);
 if (ret)
  goto err;
 return 0;
err:
 drm_unset_busid(dev, master);
 return ret;
}
