
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dl_tasklet; } ;
struct asd_ha_struct {TYPE_1__ seq; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void asd_process_donelist_isr(struct asd_ha_struct *asd_ha)
{
 tasklet_schedule(&asd_ha->seq.dl_tasklet);
}
