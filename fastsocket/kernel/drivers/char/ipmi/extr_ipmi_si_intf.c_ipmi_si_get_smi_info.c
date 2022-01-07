
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {scalar_t__ token; int dev; int addr_info; int addr_source; } ;
struct ipmi_smi_info {int addr_info; int dev; int addr_src; } ;


 int ENOSYS ;
 scalar_t__ SI_INTF_TOKEN ;
 int get_device (int ) ;

int ipmi_si_get_smi_info(void *send_info, struct ipmi_smi_info *data)
{
 struct smi_info *smi = send_info;

 if (!smi || (smi->token != SI_INTF_TOKEN))
  return -ENOSYS;

 data->addr_src = smi->addr_source;
 data->dev = smi->dev;
 data->addr_info = smi->addr_info;
 get_device(smi->dev);

 return 0;
}
