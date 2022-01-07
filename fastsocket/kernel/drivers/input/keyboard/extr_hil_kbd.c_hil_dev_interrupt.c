
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct hil_dev {int idx4; int* data; scalar_t__ is_pointer; } ;
typedef int irqreturn_t ;
typedef int hil_packet ;


 int BUG_ON (int ) ;
 int HIL_ERR_INT ;
 int HIL_PACKET_MAX_LENGTH ;
 int HIL_PKT_CMD ;
 int IRQ_HANDLED ;
 int hil_dev_handle_command_response (struct hil_dev*) ;
 int hil_dev_handle_kbd_events (struct hil_dev*) ;
 int hil_dev_handle_ptr_events (struct hil_dev*) ;
 scalar_t__ hil_dev_is_command_response (int) ;
 int hil_dev_process_err (struct hil_dev*) ;
 struct hil_dev* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t hil_dev_interrupt(struct serio *serio,
    unsigned char data, unsigned int flags)
{
 struct hil_dev *dev;
 hil_packet packet;
 int idx;

 dev = serio_get_drvdata(serio);
 BUG_ON(dev == ((void*)0));

 if (dev->idx4 >= HIL_PACKET_MAX_LENGTH * sizeof(hil_packet)) {
  hil_dev_process_err(dev);
  goto out;
 }

 idx = dev->idx4 / 4;
 if (!(dev->idx4 % 4))
  dev->data[idx] = 0;
 packet = dev->data[idx];
 packet |= ((hil_packet)data) << ((3 - (dev->idx4 % 4)) * 8);
 dev->data[idx] = packet;


 if ((++dev->idx4 % 4) == 0) {
  if ((packet & 0xffff0000) != HIL_ERR_INT) {
   hil_dev_process_err(dev);
  } else if (packet & HIL_PKT_CMD) {
   if (hil_dev_is_command_response(packet))
    hil_dev_handle_command_response(dev);
   else if (dev->is_pointer)
    hil_dev_handle_ptr_events(dev);
   else
    hil_dev_handle_kbd_events(dev);
   dev->idx4 = 0;
  }
 }
 out:
 return IRQ_HANDLED;
}
