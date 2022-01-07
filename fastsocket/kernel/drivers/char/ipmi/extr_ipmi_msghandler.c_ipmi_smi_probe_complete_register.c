
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_probe_complete {int (* probe_complete ) () ;int link; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ probing_complete ;
 int smi_probe_complete ;
 int smi_probe_complete_mutex ;
 int stub1 () ;

int ipmi_smi_probe_complete_register(struct ipmi_smi_probe_complete *probe_complete)
{
 mutex_lock(&smi_probe_complete_mutex);
 list_add(&probe_complete->link, &smi_probe_complete);
 if (probing_complete && probe_complete->probe_complete)
  probe_complete->probe_complete();
 mutex_unlock(&smi_probe_complete_mutex);
 return 0;
}
