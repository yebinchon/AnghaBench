
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sony_pic_dev {scalar_t__ (* handle_irq ) (int,int) ;int acpi_dev; scalar_t__ evport_offset; TYPE_5__* cur_ioport; TYPE_3__* event_types; } ;
typedef int irqreturn_t ;
struct TYPE_9__ {scalar_t__ minimum; } ;
struct TYPE_6__ {scalar_t__ minimum; } ;
struct TYPE_10__ {TYPE_4__ io1; TYPE_1__ io2; } ;
struct TYPE_8__ {int mask; int data; TYPE_2__* events; } ;
struct TYPE_7__ {int event; int data; } ;


 int IRQ_HANDLED ;
 int acpi_bus_generate_proc_event (int ,int,int) ;
 int dprintk (char*,int,int,scalar_t__,scalar_t__) ;
 int inb_p (scalar_t__) ;
 int mask ;
 int sony_laptop_report_input_event (int) ;
 int sonypi_compat_report_event (int) ;
 scalar_t__ stub1 (int,int) ;

__attribute__((used)) static irqreturn_t sony_pic_irq(int irq, void *dev_id)
{
 int i, j;
 u8 ev = 0;
 u8 data_mask = 0;
 u8 device_event = 0;

 struct sony_pic_dev *dev = (struct sony_pic_dev *) dev_id;

 ev = inb_p(dev->cur_ioport->io1.minimum);
 if (dev->cur_ioport->io2.minimum)
  data_mask = inb_p(dev->cur_ioport->io2.minimum);
 else
  data_mask = inb_p(dev->cur_ioport->io1.minimum +
    dev->evport_offset);

 dprintk("event ([%.2x] [%.2x]) at port 0x%.4x(+0x%.2x)\n",
   ev, data_mask, dev->cur_ioport->io1.minimum,
   dev->evport_offset);

 if (ev == 0x00 || ev == 0xff)
  return IRQ_HANDLED;

 for (i = 0; dev->event_types[i].mask; i++) {

  if ((data_mask & dev->event_types[i].data) !=
      dev->event_types[i].data)
   continue;

  if (!(mask & dev->event_types[i].mask))
   continue;

  for (j = 0; dev->event_types[i].events[j].event; j++) {
   if (ev == dev->event_types[i].events[j].data) {
    device_event =
     dev->event_types[i].events[j].event;
    goto found;
   }
  }
 }



 if (dev->handle_irq && dev->handle_irq(data_mask, ev) == 0)
  return IRQ_HANDLED;

 dprintk("unknown event ([%.2x] [%.2x]) at port 0x%.4x(+0x%.2x)\n",
   ev, data_mask, dev->cur_ioport->io1.minimum,
   dev->evport_offset);
 return IRQ_HANDLED;

found:
 sony_laptop_report_input_event(device_event);
 acpi_bus_generate_proc_event(dev->acpi_dev, 1, device_event);
 sonypi_compat_report_event(device_event);

 return IRQ_HANDLED;
}
