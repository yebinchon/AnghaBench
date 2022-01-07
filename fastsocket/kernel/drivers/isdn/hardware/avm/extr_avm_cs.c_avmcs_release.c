
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int AssignedIRQ; } ;
struct TYPE_3__ {int BasePort1; } ;
struct pcmcia_device {TYPE_2__ irq; TYPE_1__ io; } ;


 int b1pcmcia_delcard (int ,int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void avmcs_release(struct pcmcia_device *link)
{
 b1pcmcia_delcard(link->io.BasePort1, link->irq.AssignedIRQ);
 pcmcia_disable_device(link);
}
