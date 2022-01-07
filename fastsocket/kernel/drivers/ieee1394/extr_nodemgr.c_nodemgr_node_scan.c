
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selfid {int link_active; scalar_t__ extended; } ;
struct hpsb_host {int selfid_count; scalar_t__ topology_map; } ;
typedef int nodeid_t ;


 int LOCAL_BUS ;
 int nodemgr_node_scan_one (struct hpsb_host*,int ,int) ;

__attribute__((used)) static void nodemgr_node_scan(struct hpsb_host *host, int generation)
{
 int count;
 struct selfid *sid = (struct selfid *)host->topology_map;
 nodeid_t nodeid = LOCAL_BUS;


 for (count = host->selfid_count; count; count--, sid++) {
  if (sid->extended)
   continue;

  if (!sid->link_active) {
   nodeid++;
   continue;
  }
  nodemgr_node_scan_one(host, nodeid++, generation);
 }
}
