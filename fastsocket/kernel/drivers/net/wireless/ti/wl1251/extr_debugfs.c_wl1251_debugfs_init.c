
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * rootdir; int * fw_statistics; } ;
struct TYPE_3__ {int * fw_stats; int fw_stats_update; } ;
struct wl1251 {TYPE_2__ debugfs; TYPE_1__ stats; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 char* KBUILD_MODNAME ;
 int PTR_ERR (int *) ;
 void* debugfs_create_dir (char*,int *) ;
 int debugfs_remove (int *) ;
 int jiffies ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int wl1251_debugfs_add_files (struct wl1251*) ;

int wl1251_debugfs_init(struct wl1251 *wl)
{
 int ret;

 wl->debugfs.rootdir = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));

 if (IS_ERR(wl->debugfs.rootdir)) {
  ret = PTR_ERR(wl->debugfs.rootdir);
  wl->debugfs.rootdir = ((void*)0);
  goto err;
 }

 wl->debugfs.fw_statistics = debugfs_create_dir("fw-statistics",
             wl->debugfs.rootdir);

 if (IS_ERR(wl->debugfs.fw_statistics)) {
  ret = PTR_ERR(wl->debugfs.fw_statistics);
  wl->debugfs.fw_statistics = ((void*)0);
  goto err_root;
 }

 wl->stats.fw_stats = kzalloc(sizeof(*wl->stats.fw_stats),
          GFP_KERNEL);

 if (!wl->stats.fw_stats) {
  ret = -ENOMEM;
  goto err_fw;
 }

 wl->stats.fw_stats_update = jiffies;

 ret = wl1251_debugfs_add_files(wl);

 if (ret < 0)
  goto err_file;

 return 0;

err_file:
 kfree(wl->stats.fw_stats);
 wl->stats.fw_stats = ((void*)0);

err_fw:
 debugfs_remove(wl->debugfs.fw_statistics);
 wl->debugfs.fw_statistics = ((void*)0);

err_root:
 debugfs_remove(wl->debugfs.rootdir);
 wl->debugfs.rootdir = ((void*)0);

err:
 return ret;
}
