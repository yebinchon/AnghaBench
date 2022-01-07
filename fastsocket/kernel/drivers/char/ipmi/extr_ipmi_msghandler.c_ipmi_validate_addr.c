
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_system_interface_addr {int dummy; } ;
struct ipmi_lan_addr {int dummy; } ;
struct ipmi_ipmb_addr {int dummy; } ;
struct ipmi_addr {scalar_t__ addr_type; scalar_t__ channel; } ;


 int EINVAL ;
 scalar_t__ IPMI_BMC_CHANNEL ;
 scalar_t__ IPMI_MAX_CHANNELS ;
 scalar_t__ IPMI_SYSTEM_INTERFACE_ADDR_TYPE ;
 scalar_t__ is_ipmb_addr (struct ipmi_addr*) ;
 scalar_t__ is_ipmb_bcast_addr (struct ipmi_addr*) ;
 scalar_t__ is_lan_addr (struct ipmi_addr*) ;

int ipmi_validate_addr(struct ipmi_addr *addr, int len)
{
 if (len < sizeof(struct ipmi_system_interface_addr))
  return -EINVAL;

 if (addr->addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE) {
  if (addr->channel != IPMI_BMC_CHANNEL)
   return -EINVAL;
  return 0;
 }

 if ((addr->channel == IPMI_BMC_CHANNEL)
     || (addr->channel >= IPMI_MAX_CHANNELS)
     || (addr->channel < 0))
  return -EINVAL;

 if (is_ipmb_addr(addr) || is_ipmb_bcast_addr(addr)) {
  if (len < sizeof(struct ipmi_ipmb_addr))
   return -EINVAL;
  return 0;
 }

 if (is_lan_addr(addr)) {
  if (len < sizeof(struct ipmi_lan_addr))
   return -EINVAL;
  return 0;
 }

 return -EINVAL;
}
