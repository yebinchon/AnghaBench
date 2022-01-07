
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int sas_addr; } ;


 int SAS_ADDR (int ) ;
 int SAS_DPRINTK (char*,int ,int) ;
 int sas_check_ex_subtractive_boundary (struct domain_device*) ;
 int sas_check_parent_topology (struct domain_device*) ;
 int sas_ex_general (struct domain_device*) ;
 int sas_ex_manuf_info (struct domain_device*) ;
 int sas_expander_discover (struct domain_device*) ;
 int sas_notify_lldd_dev_found (struct domain_device*) ;
 int sas_notify_lldd_dev_gone (struct domain_device*) ;

__attribute__((used)) static int sas_discover_expander(struct domain_device *dev)
{
 int res;

 res = sas_notify_lldd_dev_found(dev);
 if (res)
  return res;

 res = sas_ex_general(dev);
 if (res)
  goto out_err;
 res = sas_ex_manuf_info(dev);
 if (res)
  goto out_err;

 res = sas_expander_discover(dev);
 if (res) {
  SAS_DPRINTK("expander %016llx discovery failed(0x%x)\n",
       SAS_ADDR(dev->sas_addr), res);
  goto out_err;
 }

 sas_check_ex_subtractive_boundary(dev);
 res = sas_check_parent_topology(dev);
 if (res)
  goto out_err;
 return 0;
out_err:
 sas_notify_lldd_dev_gone(dev);
 return res;
}
