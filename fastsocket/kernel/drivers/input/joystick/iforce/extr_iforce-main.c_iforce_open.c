
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int evbit; } ;
struct iforce {int bus; TYPE_1__* irq; int usbdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int EV_FF ;
 int FF_CMD_ENABLE ;
 int GFP_KERNEL ;

 int iforce_send_packet (struct iforce*,int ,char*) ;
 struct iforce* input_get_drvdata (struct input_dev*) ;
 scalar_t__ test_bit (int ,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int iforce_open(struct input_dev *dev)
{
 struct iforce *iforce = input_get_drvdata(dev);

 switch (iforce->bus) {







 }

 if (test_bit(EV_FF, dev->evbit)) {

  iforce_send_packet(iforce, FF_CMD_ENABLE, "\004");
 }

 return 0;
}
