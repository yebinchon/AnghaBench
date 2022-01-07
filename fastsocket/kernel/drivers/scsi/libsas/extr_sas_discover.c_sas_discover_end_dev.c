
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int port; } ;


 int DISCE_PROBE ;
 int sas_discover_event (int ,int ) ;
 int sas_notify_lldd_dev_found (struct domain_device*) ;

int sas_discover_end_dev(struct domain_device *dev)
{
 int res;

 res = sas_notify_lldd_dev_found(dev);
 if (res)
  return res;
 sas_discover_event(dev->port, DISCE_PROBE);

 return 0;
}
