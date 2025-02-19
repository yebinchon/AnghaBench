
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 scalar_t__ ifnum_to_use ;
 scalar_t__ ipmi_ifnum ;
 int ipmi_po_new_smi (scalar_t__,int *) ;
 int ipmi_po_smi_gone (scalar_t__) ;
 int param_set_int (char const*,struct kernel_param*) ;

__attribute__((used)) static int set_param_ifnum(const char *val, struct kernel_param *kp)
{
 int rv = param_set_int(val, kp);
 if (rv)
  return rv;
 if ((ifnum_to_use < 0) || (ifnum_to_use == ipmi_ifnum))
  return 0;

 ipmi_po_smi_gone(ipmi_ifnum);
 ipmi_po_new_smi(ifnum_to_use, ((void*)0));
 return 0;
}
