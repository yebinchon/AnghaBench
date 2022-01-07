
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct node_entry {TYPE_1__ device; } ;
struct device {int kobj; } ;
struct hpsb_host {int id; int node_id; int busmgr_id; int irm_id; struct device device; } ;


 int HPSB_ERR (char*,int ) ;
 struct node_entry* find_entry_by_nodeid (struct hpsb_host*,int ) ;
 scalar_t__ sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void nodemgr_update_host_dev_links(struct hpsb_host *host)
{
 struct device *dev = &host->device;
 struct node_entry *ne;

 sysfs_remove_link(&dev->kobj, "irm_id");
 sysfs_remove_link(&dev->kobj, "busmgr_id");
 sysfs_remove_link(&dev->kobj, "host_id");

 if ((ne = find_entry_by_nodeid(host, host->irm_id)) &&
     sysfs_create_link(&dev->kobj, &ne->device.kobj, "irm_id"))
  goto fail;
 if ((ne = find_entry_by_nodeid(host, host->busmgr_id)) &&
     sysfs_create_link(&dev->kobj, &ne->device.kobj, "busmgr_id"))
  goto fail;
 if ((ne = find_entry_by_nodeid(host, host->node_id)) &&
     sysfs_create_link(&dev->kobj, &ne->device.kobj, "host_id"))
  goto fail;
 return;
fail:
 HPSB_ERR("Failed to update sysfs attributes for host %d", host->id);
}
