
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct hso_serial {int rts_state; int dtr_state; TYPE_4__* parent; int serial_lock; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int usb; TYPE_3__* interface; } ;
struct TYPE_7__ {TYPE_2__* altsetting; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int D1 (char*) ;
 int EINVAL ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int USB_CTRL_SET_TIMEOUT ;
 struct hso_serial* get_serial_by_tty (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int hso_serial_tiocmset(struct tty_struct *tty, struct file *file,
          unsigned int set, unsigned int clear)
{
 int val = 0;
 unsigned long flags;
 int if_num;
 struct hso_serial *serial = get_serial_by_tty(tty);


 if (!serial) {
  D1("no tty structures");
  return -EINVAL;
 }
 if_num = serial->parent->interface->altsetting->desc.bInterfaceNumber;

 spin_lock_irqsave(&serial->serial_lock, flags);
 if (set & TIOCM_RTS)
  serial->rts_state = 1;
 if (set & TIOCM_DTR)
  serial->dtr_state = 1;

 if (clear & TIOCM_RTS)
  serial->rts_state = 0;
 if (clear & TIOCM_DTR)
  serial->dtr_state = 0;

 if (serial->dtr_state)
  val |= 0x01;
 if (serial->rts_state)
  val |= 0x02;

 spin_unlock_irqrestore(&serial->serial_lock, flags);

 return usb_control_msg(serial->parent->usb,
          usb_rcvctrlpipe(serial->parent->usb, 0), 0x22,
          0x21, val, if_num, ((void*)0), 0,
          USB_CTRL_SET_TIMEOUT);
}
