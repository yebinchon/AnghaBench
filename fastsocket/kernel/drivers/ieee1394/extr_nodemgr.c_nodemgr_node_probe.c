
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_probe_parameter {int generation; int probe_now; struct hpsb_host* host; } ;
struct hpsb_host {int dummy; } ;


 int HPSB_DEBUG (char*) ;
 scalar_t__ bus_rescan_devices (int *) ;
 scalar_t__ class_for_each_device (int *,int *,struct node_probe_parameter*,int ) ;
 int ieee1394_bus_type ;
 int node_probe ;
 int nodemgr_ne_class ;

__attribute__((used)) static int nodemgr_node_probe(struct hpsb_host *host, int generation)
{
 struct node_probe_parameter p;

 p.host = host;
 p.generation = generation;
 p.probe_now = 0;
 if (class_for_each_device(&nodemgr_ne_class, ((void*)0), &p, node_probe) != 0)
  return 0;

 p.probe_now = 1;
 if (class_for_each_device(&nodemgr_ne_class, ((void*)0), &p, node_probe) != 0)
  return 0;
 if (bus_rescan_devices(&ieee1394_bus_type) != 0)
  HPSB_DEBUG("bus_rescan_devices had an error");

 return 1;
}
