
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_work {int work; } ;
struct TYPE_2__ {int shost; } ;
struct sas_ha_struct {TYPE_1__ core; } ;


 int scsi_queue_work (int ,int *) ;

__attribute__((used)) static void sas_chain_work(struct sas_ha_struct *ha, struct sas_work *sw)
{





 scsi_queue_work(ha->core.shost, &sw->work);
}
