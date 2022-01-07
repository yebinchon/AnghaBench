
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node_name; int port_name; } ;
struct ibmvfc_target {scalar_t__ scsi_id; TYPE_1__ ids; } ;
struct TYPE_4__ {scalar_t__* response; } ;
struct ibmvfc_passthru_mad {TYPE_2__ fc_iu; } ;


 scalar_t__ memcmp (scalar_t__*,int *,int) ;

__attribute__((used)) static int ibmvfc_adisc_needs_plogi(struct ibmvfc_passthru_mad *mad,
        struct ibmvfc_target *tgt)
{
 if (memcmp(&mad->fc_iu.response[2], &tgt->ids.port_name,
     sizeof(tgt->ids.port_name)))
  return 1;
 if (memcmp(&mad->fc_iu.response[4], &tgt->ids.node_name,
     sizeof(tgt->ids.node_name)))
  return 1;
 if (mad->fc_iu.response[6] != tgt->scsi_id)
  return 1;
 return 0;
}
