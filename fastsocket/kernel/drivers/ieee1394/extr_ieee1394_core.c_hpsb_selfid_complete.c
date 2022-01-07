
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsb_host {int node_id; int is_root; int irm_id; int is_irm; int is_cycmst; scalar_t__ in_bus_reset; int generation; TYPE_1__* driver; scalar_t__ is_busmgr; int node_count; scalar_t__ reset_retries; } ;
struct TYPE_2__ {int (* devctl ) (struct hpsb_host*,int ,int) ;} ;


 int ACT_CYCLE_MASTER ;
 int HPSB_NOTICE (char*) ;
 int HPSB_VERBOSE (char*,int,int) ;
 int LOCAL_BUS ;
 int LONG_RESET ;
 int atomic_inc (int *) ;
 int build_speed_map (struct hpsb_host*,int ) ;
 int check_selfids (struct hpsb_host*) ;
 int highlevel_host_reset (struct hpsb_host*) ;
 int hpsb_reset_bus (struct hpsb_host*,int ) ;
 int stub1 (struct hpsb_host*,int ,int) ;

void hpsb_selfid_complete(struct hpsb_host *host, int phyid, int isroot)
{
 if (!host->in_bus_reset)
  HPSB_NOTICE("SelfID completion called outside of bus reset!");

 host->node_id = LOCAL_BUS | phyid;
 host->is_root = isroot;

 if (!check_selfids(host)) {
  if (host->reset_retries++ < 20) {

   HPSB_NOTICE("Error in SelfID stage, resetting");
   host->in_bus_reset = 0;

   hpsb_reset_bus(host, LONG_RESET);
   return;
  } else {
   HPSB_NOTICE("Stopping out-of-control reset loop");
   HPSB_NOTICE("Warning - topology map and speed map will not be valid");
   host->reset_retries = 0;
  }
 } else {
  host->reset_retries = 0;
  build_speed_map(host, host->node_count);
 }

 HPSB_VERBOSE("selfid_complete called with successful SelfID stage "
       "... irm_id: 0x%X node_id: 0x%X",host->irm_id,host->node_id);


 if (host->irm_id == host->node_id) {
  host->is_irm = 1;
 } else {
  host->is_busmgr = 0;
  host->is_irm = 0;
 }

 if (isroot) {
  host->driver->devctl(host, ACT_CYCLE_MASTER, 1);
  host->is_cycmst = 1;
 }
 atomic_inc(&host->generation);
 host->in_bus_reset = 0;
 highlevel_host_reset(host);
}
