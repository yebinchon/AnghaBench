
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * rootdir; int * fw_statistics; } ;
struct TYPE_3__ {int * fw_stats; } ;
struct wl1251 {TYPE_2__ debugfs; TYPE_1__ stats; } ;


 int debugfs_remove (int *) ;
 int kfree (int *) ;
 int wl1251_debugfs_delete_files (struct wl1251*) ;

void wl1251_debugfs_exit(struct wl1251 *wl)
{
 wl1251_debugfs_delete_files(wl);

 kfree(wl->stats.fw_stats);
 wl->stats.fw_stats = ((void*)0);

 debugfs_remove(wl->debugfs.fw_statistics);
 wl->debugfs.fw_statistics = ((void*)0);

 debugfs_remove(wl->debugfs.rootdir);
 wl->debugfs.rootdir = ((void*)0);

}
