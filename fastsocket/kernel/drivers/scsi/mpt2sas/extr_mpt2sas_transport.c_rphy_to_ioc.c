
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct sas_rphy {TYPE_2__ dev; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int parent; } ;


 struct Scsi_Host* dev_to_shost (int ) ;
 void* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline void *
rphy_to_ioc(struct sas_rphy *rphy)
{
 struct Scsi_Host *shost = dev_to_shost(rphy->dev.parent->parent);
 return shost_priv(shost);
}
