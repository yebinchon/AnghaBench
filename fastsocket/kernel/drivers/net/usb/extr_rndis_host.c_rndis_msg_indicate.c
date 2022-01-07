
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_2__* driver_info; int data; } ;
struct rndis_indicate {int status; } ;
struct device {int dummy; } ;
struct cdc_state {TYPE_1__* control; } ;
struct TYPE_4__ {int (* indication ) (struct usbnet*,struct rndis_indicate*,int) ;} ;
struct TYPE_3__ {struct device dev; } ;




 int dev_info (struct device*,char*,...) ;
 int le32_to_cpu (int) ;
 int stub1 (struct usbnet*,struct rndis_indicate*,int) ;

__attribute__((used)) static void rndis_msg_indicate(struct usbnet *dev, struct rndis_indicate *msg,
    int buflen)
{
 struct cdc_state *info = (void *)&dev->data;
 struct device *udev = &info->control->dev;

 if (dev->driver_info->indication) {
  dev->driver_info->indication(dev, msg, buflen);
 } else {
  switch (msg->status) {
  case 129:
   dev_info(udev, "rndis media connect\n");
   break;
  case 128:
   dev_info(udev, "rndis media disconnect\n");
   break;
  default:
   dev_info(udev, "rndis indication: 0x%08x\n",
     le32_to_cpu(msg->status));
  }
 }
}
