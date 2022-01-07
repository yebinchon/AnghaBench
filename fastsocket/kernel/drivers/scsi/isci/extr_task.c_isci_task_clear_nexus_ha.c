
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int dummy; } ;


 int TMF_RESP_FUNC_FAILED ;

int isci_task_clear_nexus_ha(struct sas_ha_struct *ha)
{
 return TMF_RESP_FUNC_FAILED;
}
