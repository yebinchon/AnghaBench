
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int node_id; int selfid_count; int * topology_map; scalar_t__ in_bus_reset; } ;
typedef int quadlet_t ;


 int HPSB_NOTICE (char*,int ,int ) ;
 int HPSB_VERBOSE (char*,int ) ;
 int NODEID_TO_BUS (int ) ;

void hpsb_selfid_received(struct hpsb_host *host, quadlet_t sid)
{
 if (host->in_bus_reset) {
  HPSB_VERBOSE("Including SelfID 0x%x", sid);
  host->topology_map[host->selfid_count++] = sid;
 } else {
  HPSB_NOTICE("Spurious SelfID packet (0x%08x) received from bus %d",
       sid, NODEID_TO_BUS(host->node_id));
 }
}
