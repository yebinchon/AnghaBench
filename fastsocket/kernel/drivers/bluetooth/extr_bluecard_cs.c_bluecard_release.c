
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_3__ {int timer; } ;
typedef TYPE_1__ bluecard_info_t ;


 int bluecard_close (TYPE_1__*) ;
 int del_timer (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void bluecard_release(struct pcmcia_device *link)
{
 bluecard_info_t *info = link->priv;

 bluecard_close(info);

 del_timer(&(info->timer));

 pcmcia_disable_device(link);
}
