
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct srp_target_port {int scsi_id; TYPE_3__* scsi_host; int state; int list; int ioc_guid; int id_ext; int target_name; } ;
struct srp_rport_identifiers {int roles; scalar_t__ port_id; } ;
struct srp_rport {struct srp_target_port* lld_data; } ;
struct srp_host {int target_lock; int target_list; TYPE_2__* srp_dev; } ;
struct TYPE_8__ {int shost_gendev; } ;
struct TYPE_7__ {TYPE_1__* dev; } ;
struct TYPE_6__ {int dma_device; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct srp_rport*) ;
 int PTR_ERR (struct srp_rport*) ;
 int SCAN_WILD_CARD ;
 int SRP_RPORT_ROLE_TARGET ;
 int SRP_TARGET_LIVE ;
 scalar_t__ be64_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (scalar_t__,int *,int) ;
 scalar_t__ scsi_add_host (TYPE_3__*,int ) ;
 int scsi_remove_host (TYPE_3__*) ;
 int scsi_scan_target (int *,int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int ,char*,unsigned long long) ;
 struct srp_rport* srp_rport_add (TYPE_3__*,struct srp_rport_identifiers*) ;

__attribute__((used)) static int srp_add_target(struct srp_host *host, struct srp_target_port *target)
{
 struct srp_rport_identifiers ids;
 struct srp_rport *rport;

 sprintf(target->target_name, "SRP.T10:%016llX",
   (unsigned long long) be64_to_cpu(target->id_ext));

 if (scsi_add_host(target->scsi_host, host->srp_dev->dev->dma_device))
  return -ENODEV;

 memcpy(ids.port_id, &target->id_ext, 8);
 memcpy(ids.port_id + 8, &target->ioc_guid, 8);
 ids.roles = SRP_RPORT_ROLE_TARGET;
 rport = srp_rport_add(target->scsi_host, &ids);
 if (IS_ERR(rport)) {
  scsi_remove_host(target->scsi_host);
  return PTR_ERR(rport);
 }

 rport->lld_data = target;

 spin_lock(&host->target_lock);
 list_add_tail(&target->list, &host->target_list);
 spin_unlock(&host->target_lock);

 target->state = SRP_TARGET_LIVE;

 scsi_scan_target(&target->scsi_host->shost_gendev,
    0, target->scsi_id, SCAN_WILD_CARD, 0);

 return 0;
}
