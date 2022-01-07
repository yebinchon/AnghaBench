
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_info {scalar_t__ multi; } ;
struct TYPE_2__ {int ExtStatus; int Present; } ;
struct pcmcia_device {TYPE_1__ conf; struct serial_info* priv; } ;


 int ESR_REQ_ATTN_ENA ;
 int PRESENT_EXT_STATUS ;

__attribute__((used)) static void quirk_config_socket(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;

 if (info->multi) {
  link->conf.Present |= PRESENT_EXT_STATUS;
  link->conf.ExtStatus = ESR_REQ_ATTN_ENA;
 }
}
