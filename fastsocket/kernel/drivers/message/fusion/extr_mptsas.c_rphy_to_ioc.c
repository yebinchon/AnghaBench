
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* parent; } ;
struct sas_rphy {TYPE_2__ dev; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_6__ {int * ioc; } ;
struct TYPE_4__ {int parent; } ;
typedef TYPE_3__ MPT_SCSI_HOST ;
typedef int MPT_ADAPTER ;


 struct Scsi_Host* dev_to_shost (int ) ;

__attribute__((used)) static inline MPT_ADAPTER *rphy_to_ioc(struct sas_rphy *rphy)
{
 struct Scsi_Host *shost = dev_to_shost(rphy->dev.parent->parent);
 return ((MPT_SCSI_HOST *)shost->hostdata)->ioc;
}
