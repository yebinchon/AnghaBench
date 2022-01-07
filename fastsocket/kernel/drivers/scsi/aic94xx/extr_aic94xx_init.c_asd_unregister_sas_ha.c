
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shost; } ;
struct TYPE_4__ {int sas_port; int sas_phy; TYPE_1__ core; } ;
struct asd_ha_struct {TYPE_2__ sas_ha; } ;


 int kfree (int ) ;
 int sas_remove_host (int ) ;
 int sas_unregister_ha (TYPE_2__*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static int asd_unregister_sas_ha(struct asd_ha_struct *asd_ha)
{
 int err;

 err = sas_unregister_ha(&asd_ha->sas_ha);

 sas_remove_host(asd_ha->sas_ha.core.shost);
 scsi_remove_host(asd_ha->sas_ha.core.shost);
 scsi_host_put(asd_ha->sas_ha.core.shost);

 kfree(asd_ha->sas_ha.sas_phy);
 kfree(asd_ha->sas_ha.sas_port);

 return err;
}
