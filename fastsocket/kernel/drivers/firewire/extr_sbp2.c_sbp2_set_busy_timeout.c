
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_logical_unit {int generation; TYPE_1__* tgt; } ;
struct fw_device {int max_speed; int card; } ;
typedef int d ;
typedef int __be32 ;
struct TYPE_2__ {int node_id; } ;


 scalar_t__ CSR_BUSY_TIMEOUT ;
 scalar_t__ CSR_REGISTER_BASE ;
 int SBP2_CYCLE_LIMIT ;
 int SBP2_RETRY_LIMIT ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_be32 (int) ;
 int fw_run_transaction (int ,int ,int ,int ,int ,scalar_t__,int *,int) ;
 struct fw_device* target_device (TYPE_1__*) ;

__attribute__((used)) static void sbp2_set_busy_timeout(struct sbp2_logical_unit *lu)
{
 struct fw_device *device = target_device(lu->tgt);
 __be32 d = cpu_to_be32(SBP2_CYCLE_LIMIT | SBP2_RETRY_LIMIT);

 fw_run_transaction(device->card, TCODE_WRITE_QUADLET_REQUEST,
      lu->tgt->node_id, lu->generation, device->max_speed,
      CSR_REGISTER_BASE + CSR_BUSY_TIMEOUT,
      &d, sizeof(d));
}
