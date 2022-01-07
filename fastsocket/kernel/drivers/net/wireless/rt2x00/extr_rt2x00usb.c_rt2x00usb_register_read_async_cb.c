
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; struct rt2x00_async_read_data* context; } ;
struct rt2x00_async_read_data {int reg; int rt2x00dev; scalar_t__ (* callback ) (int ,int ,int ) ;} ;


 int GFP_ATOMIC ;
 int kfree (struct rt2x00_async_read_data*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ stub1 (int ,int ,int ) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void rt2x00usb_register_read_async_cb(struct urb *urb)
{
 struct rt2x00_async_read_data *rd = urb->context;
 if (rd->callback(rd->rt2x00dev, urb->status, le32_to_cpu(rd->reg))) {
  if (usb_submit_urb(urb, GFP_ATOMIC) < 0)
   kfree(rd);
 } else
  kfree(rd);
}
