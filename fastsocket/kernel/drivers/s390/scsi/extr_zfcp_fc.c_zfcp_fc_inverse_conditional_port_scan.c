
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int scan_work; int work_queue; } ;


 int no_auto_port_rescan ;
 int queue_work (int ,int *) ;

void zfcp_fc_inverse_conditional_port_scan(struct zfcp_adapter *adapter)
{
 if (!no_auto_port_rescan)
  return;

 queue_work(adapter->work_queue, &adapter->scan_work);
}
