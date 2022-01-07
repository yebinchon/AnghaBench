
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct pcmcia_socket {int dummy; } ;
struct pcmcia_device {TYPE_1__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_4__ {int state; int ConfigBase; } ;
typedef TYPE_1__ config_t ;
struct TYPE_5__ {int Offset; int Action; int Value; } ;
typedef TYPE_2__ conf_reg_t ;


 int CONFIG_LOCKED ;


 int EACCES ;
 int EINVAL ;
 int pcmcia_read_cis_mem (struct pcmcia_socket*,int,int,int,int *) ;
 int pcmcia_write_cis_mem (struct pcmcia_socket*,int,int,int,int *) ;

int pcmcia_access_configuration_register(struct pcmcia_device *p_dev,
      conf_reg_t *reg)
{
 struct pcmcia_socket *s;
 config_t *c;
 int addr;
 u_char val;

 if (!p_dev || !p_dev->function_config)
  return -EINVAL;

 s = p_dev->socket;
 c = p_dev->function_config;

 if (!(c->state & CONFIG_LOCKED))
  return -EACCES;

 addr = (c->ConfigBase + reg->Offset) >> 1;

 switch (reg->Action) {
 case 129:
  pcmcia_read_cis_mem(s, 1, addr, 1, &val);
  reg->Value = val;
  break;
 case 128:
  val = reg->Value;
  pcmcia_write_cis_mem(s, 1, addr, 1, &val);
  break;
 default:
  return -EINVAL;
  break;
 }
 return 0;
}
