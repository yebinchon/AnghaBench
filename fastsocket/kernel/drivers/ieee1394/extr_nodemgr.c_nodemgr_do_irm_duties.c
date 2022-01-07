
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int broadcast_channel; } ;
struct hpsb_host {scalar_t__ irm_id; int busmgr_id; int node_count; int resume_packet_sent; int node_id; scalar_t__ is_cycmst; TYPE_1__ csr; int is_irm; } ;
typedef int quadlet_t ;
typedef scalar_t__ nodeid_t ;


 int CSR_CMC_SHIFT ;
 scalar_t__ CSR_CONFIG_ROM ;
 scalar_t__ CSR_REGISTER_BASE ;
 int HPSB_DEBUG (char*) ;
 int LOCAL_BUS ;
 int LONG_RESET_FORCE_ROOT ;
 int NODEID_TO_NODE (int ) ;
 int be32_to_cpu (int ) ;
 int get_hpsb_generation (struct hpsb_host*) ;
 int hpsb_read (struct hpsb_host*,int,int ,scalar_t__,int *,int) ;
 int hpsb_reset_bus (struct hpsb_host*,int ) ;
 int hpsb_send_phy_config (struct hpsb_host*,int,int) ;
 int nodemgr_send_resume_packet (struct hpsb_host*) ;

__attribute__((used)) static int nodemgr_do_irm_duties(struct hpsb_host *host, int cycles)
{
 quadlet_t bc;


 if (!host->is_irm || host->irm_id == (nodeid_t)-1)
  return 1;


 host->csr.broadcast_channel |= 0x40000000;




 if (host->busmgr_id == 0xffff && host->node_count > 1)
 {
  u16 root_node = host->node_count - 1;


  if (host->is_cycmst ||
      (!hpsb_read(host, LOCAL_BUS | root_node, get_hpsb_generation(host),
    (CSR_REGISTER_BASE + CSR_CONFIG_ROM + 2 * sizeof(quadlet_t)),
    &bc, sizeof(quadlet_t)) &&
       be32_to_cpu(bc) & 1 << CSR_CMC_SHIFT))
   hpsb_send_phy_config(host, root_node, -1);
  else {
   HPSB_DEBUG("The root node is not cycle master capable; "
       "selecting a new root node and resetting...");

   if (cycles >= 5) {

    HPSB_DEBUG("Stopping reset loop for IRM sanity");
    return 1;
   }

   hpsb_send_phy_config(host, NODEID_TO_NODE(host->node_id), -1);
   hpsb_reset_bus(host, LONG_RESET_FORCE_ROOT);

   return 0;
  }
 }





 if (!host->resume_packet_sent && !nodemgr_send_resume_packet(host))
  host->resume_packet_sent = 1;

 return 1;
}
