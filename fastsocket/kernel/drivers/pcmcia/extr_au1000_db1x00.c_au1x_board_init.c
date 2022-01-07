
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pcmcia; } ;


 int ENODEV ;
 int au1x00_pcmcia_socket_probe (struct device*,int *,int ,int) ;
 int au_sync_delay (int) ;
 TYPE_1__* bcsr ;
 int db1x00_pcmcia_ops ;

int au1x_board_init(struct device *dev)
{
 int ret = -ENODEV;
 bcsr->pcmcia = 0;
 au_sync_delay(2);
 ret = au1x00_pcmcia_socket_probe(dev, &db1x00_pcmcia_ops, 0, 2);
 return ret;
}
