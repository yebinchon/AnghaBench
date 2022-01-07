
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nasid_t ;
typedef scalar_t__ cnodeid_t ;


 scalar_t__ CNODEID_NONE ;
 scalar_t__ COMPACT_TO_NASID_NODEID (scalar_t__) ;
 scalar_t__ INVALID_NASID ;
 int NODE_NUM_CPUS (int) ;
 int nmi_cpu_eframe_save (scalar_t__,int) ;
 int nmi_dump_hub_irq (scalar_t__,int) ;

void nmi_node_eframe_save(cnodeid_t cnode)
{
 nasid_t nasid;
 int slice;


 if (cnode == CNODEID_NONE)
  return;

 nasid = COMPACT_TO_NASID_NODEID(cnode);
 if (nasid == INVALID_NASID)
  return;


 for (slice = 0; slice < NODE_NUM_CPUS(slice); slice++) {
  nmi_cpu_eframe_save(nasid, slice);
  nmi_dump_hub_irq(nasid, slice);
 }
}
