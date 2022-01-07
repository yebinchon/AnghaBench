
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ksdazzle_speedparams {int dummy; } ;
struct TYPE_6__ {int flags; int baudrate; } ;
struct ksdazzle_cb {TYPE_1__* speed_urb; TYPE_3__ speedparams; int * speed_setuprequest; int usbdev; } ;
struct TYPE_5__ {scalar_t__ status; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int KS_DATA_8_BITS ;
 int cpu_to_le32 (unsigned int) ;
 int ksdazzle_speed_irq ;
 int memset (TYPE_3__*,int ,int) ;
 int usb_fill_control_urb (TYPE_1__*,int ,int ,unsigned char*,TYPE_3__*,int,int ,struct ksdazzle_cb*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int ksdazzle_change_speed(struct ksdazzle_cb *kingsun, unsigned speed)
{
 static unsigned int supported_speeds[] = { 2400, 9600, 19200, 38400,
  57600, 115200, 576000, 1152000, 4000000, 0
 };
 int err;
 unsigned int i;

 if (kingsun->speed_setuprequest == ((void*)0) || kingsun->speed_urb == ((void*)0))
  return -ENOMEM;


 for (i = 0; supported_speeds[i] && supported_speeds[i] != speed; i++) ;
 if (supported_speeds[i] == 0)
  return -EOPNOTSUPP;

 memset(&(kingsun->speedparams), 0, sizeof(struct ksdazzle_speedparams));
 kingsun->speedparams.baudrate = cpu_to_le32(speed);
 kingsun->speedparams.flags = KS_DATA_8_BITS;


 usb_fill_control_urb(kingsun->speed_urb, kingsun->usbdev,
        usb_sndctrlpipe(kingsun->usbdev, 0),
        (unsigned char *)kingsun->speed_setuprequest,
        &(kingsun->speedparams),
        sizeof(struct ksdazzle_speedparams),
        ksdazzle_speed_irq, kingsun);
 kingsun->speed_urb->status = 0;
 err = usb_submit_urb(kingsun->speed_urb, GFP_ATOMIC);

 return err;
}
