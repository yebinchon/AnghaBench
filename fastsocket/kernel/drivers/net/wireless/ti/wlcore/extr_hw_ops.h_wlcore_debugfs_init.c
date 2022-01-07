
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {TYPE_1__* ops; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* debugfs_init ) (struct wl1271*,struct dentry*) ;} ;


 int stub1 (struct wl1271*,struct dentry*) ;

__attribute__((used)) static inline int
wlcore_debugfs_init(struct wl1271 *wl, struct dentry *rootdir)
{
 if (wl->ops->debugfs_init)
  return wl->ops->debugfs_init(wl, rootdir);

 return 0;
}
