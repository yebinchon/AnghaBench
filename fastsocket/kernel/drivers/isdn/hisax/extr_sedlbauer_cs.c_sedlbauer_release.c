
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ cardnr; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int HiSax_closecard (scalar_t__) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void sedlbauer_release(struct pcmcia_device *link)
{
    local_info_t *local = link->priv;
    DEBUG(0, "sedlbauer_release(0x%p)\n", link);

    if (local) {
     if (local->cardnr >= 0) {

     HiSax_closecard(local->cardnr);
 }
    }

    pcmcia_disable_device(link);
}
