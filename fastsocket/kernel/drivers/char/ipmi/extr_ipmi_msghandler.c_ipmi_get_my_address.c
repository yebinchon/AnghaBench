
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* ipmi_user_t ;
struct TYPE_7__ {TYPE_2__* intf; } ;
struct TYPE_6__ {TYPE_1__* channels; } ;
struct TYPE_5__ {unsigned char address; } ;


 int EINVAL ;
 unsigned int IPMI_MAX_CHANNELS ;

int ipmi_get_my_address(ipmi_user_t user,
   unsigned int channel,
   unsigned char *address)
{
 if (channel >= IPMI_MAX_CHANNELS)
  return -EINVAL;
 *address = user->intf->channels[channel].address;
 return 0;
}
