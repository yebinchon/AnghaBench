
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipmi_addr {size_t channel; } ;
typedef TYPE_2__* ipmi_smi_t ;
struct TYPE_5__ {TYPE_1__* channels; } ;
struct TYPE_4__ {unsigned char lun; unsigned char address; } ;


 int EINVAL ;
 size_t IPMI_MAX_CHANNELS ;

__attribute__((used)) static int check_addr(ipmi_smi_t intf,
        struct ipmi_addr *addr,
        unsigned char *saddr,
        unsigned char *lun)
{
 if (addr->channel >= IPMI_MAX_CHANNELS)
  return -EINVAL;
 *lun = intf->channels[addr->channel].lun;
 *saddr = intf->channels[addr->channel].address;
 return 0;
}
