
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int actual_length; int transfer_buffer; int status; struct mceusb_dev* context; } ;
struct pt_regs {int dummy; } ;
struct mceusb_dev {int dev; } ;


 int dev_dbg (int ,char*,int ,int) ;
 int mceusb_dev_printdata (struct mceusb_dev*,int ,int ,int,int) ;

__attribute__((used)) static void mce_async_callback(struct urb *urb, struct pt_regs *regs)
{
 struct mceusb_dev *ir;
 int len;

 if (!urb)
  return;

 ir = urb->context;
 if (ir) {
  len = urb->actual_length;

  dev_dbg(ir->dev, "callback called (status=%d len=%d)\n",
   urb->status, len);

  mceusb_dev_printdata(ir, urb->transfer_buffer, 0, len, 1);
 }

}
