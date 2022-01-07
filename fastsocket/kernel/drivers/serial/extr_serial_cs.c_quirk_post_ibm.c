
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int dummy; } ;
struct TYPE_3__ {int member_2; int Value; int Action; int member_3; int member_1; int member_0; } ;
typedef TYPE_1__ conf_reg_t ;


 int AccessConfigurationRegister ;
 int CS_READ ;
 int CS_WRITE ;
 int ENODEV ;
 int cs_error (struct pcmcia_device*,int,int) ;
 int pcmcia_access_configuration_register (struct pcmcia_device*,TYPE_1__*) ;

__attribute__((used)) static int quirk_post_ibm(struct pcmcia_device *link)
{
 conf_reg_t reg = { 0, CS_READ, 0x800, 0 };
 int last_ret, last_fn;

 last_ret = pcmcia_access_configuration_register(link, &reg);
 if (last_ret) {
  last_fn = AccessConfigurationRegister;
  goto cs_failed;
 }
 reg.Action = CS_WRITE;
 reg.Value = reg.Value | 1;
 last_ret = pcmcia_access_configuration_register(link, &reg);
 if (last_ret) {
  last_fn = AccessConfigurationRegister;
  goto cs_failed;
 }
 return 0;

 cs_failed:
 cs_error(link, last_fn, last_ret);
 return -ENODEV;
}
