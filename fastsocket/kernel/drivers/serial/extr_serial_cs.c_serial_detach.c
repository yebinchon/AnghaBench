
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_info {int dummy; } ;
struct pcmcia_device {struct serial_info* priv; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int flush_scheduled_work () ;
 int kfree (struct serial_info*) ;
 int serial_remove (struct pcmcia_device*) ;

__attribute__((used)) static void serial_detach(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;

 DEBUG(0, "serial_detach(0x%p)\n", link);




 flush_scheduled_work();




 serial_remove(link);


 kfree(info);
}
