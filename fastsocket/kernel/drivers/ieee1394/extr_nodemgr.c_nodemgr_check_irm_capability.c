
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int irm_id; int node_id; scalar_t__ is_irm; } ;
typedef int quadlet_t ;


 int CSR_BROADCAST_CHANNEL ;
 int CSR_REGISTER_BASE ;
 int HPSB_DEBUG (char*) ;
 int LOCAL_BUS ;
 int LONG_RESET_FORCE_ROOT ;
 int NODEID_TO_NODE (int ) ;
 int be32_to_cpu (int ) ;
 int get_hpsb_generation (struct hpsb_host*) ;
 scalar_t__ hpsb_disable_irm ;
 int hpsb_read (struct hpsb_host*,int,int ,int,int *,int) ;
 int hpsb_reset_bus (struct hpsb_host*,int ) ;
 int hpsb_send_phy_config (struct hpsb_host*,int ,int) ;

__attribute__((used)) static int nodemgr_check_irm_capability(struct hpsb_host *host, int cycles)
{
 quadlet_t bc;
 int status;

 if (hpsb_disable_irm || host->is_irm)
  return 1;

 status = hpsb_read(host, LOCAL_BUS | (host->irm_id),
      get_hpsb_generation(host),
      (CSR_REGISTER_BASE | CSR_BROADCAST_CHANNEL),
      &bc, sizeof(quadlet_t));

 if (status < 0 || !(be32_to_cpu(bc) & 0x80000000)) {


  HPSB_DEBUG("Current remote IRM is not 1394a-2000 compliant, resetting...");

  if (cycles >= 5) {

   HPSB_DEBUG("Stopping reset loop for IRM sanity");
   return 1;
  }

  hpsb_send_phy_config(host, NODEID_TO_NODE(host->node_id), -1);
  hpsb_reset_bus(host, LONG_RESET_FORCE_ROOT);

  return 0;
 }

 return 1;
}
