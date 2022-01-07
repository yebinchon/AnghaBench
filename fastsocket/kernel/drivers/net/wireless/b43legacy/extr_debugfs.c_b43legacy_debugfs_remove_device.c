
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct b43legacy_wldev {struct b43legacy_dfsentry* dfsentry; } ;
struct TYPE_9__ {struct b43legacy_dfsentry* log; } ;
struct TYPE_8__ {int dentry; } ;
struct TYPE_7__ {int dentry; } ;
struct TYPE_12__ {int dentry; } ;
struct TYPE_11__ {int dentry; } ;
struct TYPE_10__ {int dentry; } ;
struct b43legacy_dfsentry {TYPE_3__ txstatlog; int subdir; TYPE_2__ file_restart; TYPE_1__ file_txstat; TYPE_6__ file_shm; TYPE_5__ file_ucode_regs; TYPE_4__ file_tsf; } ;


 int b43legacy_remove_dynamic_debug (struct b43legacy_wldev*) ;
 int debugfs_remove (int ) ;
 int kfree (struct b43legacy_dfsentry*) ;

void b43legacy_debugfs_remove_device(struct b43legacy_wldev *dev)
{
 struct b43legacy_dfsentry *e;

 if (!dev)
  return;
 e = dev->dfsentry;
 if (!e)
  return;
 b43legacy_remove_dynamic_debug(dev);

 debugfs_remove(e->file_tsf.dentry);
 debugfs_remove(e->file_ucode_regs.dentry);
 debugfs_remove(e->file_shm.dentry);
 debugfs_remove(e->file_txstat.dentry);
 debugfs_remove(e->file_restart.dentry);

 debugfs_remove(e->subdir);
 kfree(e->txstatlog.log);
 kfree(e);
}
