
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_probe_complete {int link; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smi_probe_complete_mutex ;

int ipmi_smi_probe_complete_unregister(struct ipmi_smi_probe_complete *probe_complete)
{
 mutex_lock(&smi_probe_complete_mutex);
 list_del(&probe_complete->link);
 mutex_unlock(&smi_probe_complete_mutex);
 return 0;
}
