
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int device_id; } ;


 int get_prodid (struct comedi_device*,struct pcmcia_device*) ;
 int n_ni_boards ;
 TYPE_1__* ni_boards ;
 int printk (char*,int) ;

__attribute__((used)) static int ni_getboardtype(struct comedi_device *dev,
      struct pcmcia_device *link)
{
 int id;
 int i;

 id = get_prodid(dev, link);

 for (i = 0; i < n_ni_boards; i++) {
  if (ni_boards[i].device_id == id) {
   return i;
  }
 }

 printk("unknown board 0x%04x -- pretend it is a ", id);

 return 0;
}
