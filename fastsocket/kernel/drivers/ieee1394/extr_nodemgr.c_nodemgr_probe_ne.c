
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_entry {int generation; scalar_t__ needs_probe; int device; scalar_t__ in_limbo; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 int nodemgr_irm_write_bc (struct node_entry*,int) ;
 int nodemgr_pause_ne (struct node_entry*) ;
 int nodemgr_process_root_directory (struct node_entry*) ;
 int nodemgr_update_pdrv (struct node_entry*) ;
 int put_device (struct device*) ;

__attribute__((used)) static void nodemgr_probe_ne(struct hpsb_host *host, struct node_entry *ne,
        int generation)
{
 struct device *dev;

 if (ne->host != host || ne->in_limbo)
  return;

 dev = get_device(&ne->device);
 if (!dev)
  return;

 nodemgr_irm_write_bc(ne, generation);






 if (ne->needs_probe)
  nodemgr_process_root_directory(ne);
 else if (ne->generation == generation)
  nodemgr_update_pdrv(ne);
 else
  nodemgr_pause_ne(ne);

 put_device(dev);
}
