
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_regs_int {int length; scalar_t__ buffer; } ;
struct zd_usb_interrupt {struct read_regs_int read_regs; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct usb_req_read_regs {scalar_t__* addr; } ;
struct usb_int_regs {struct reg_data* regs; } ;
struct reg_data {scalar_t__ addr; } ;


 int dev_dbg_f (int ,char*,int,int,...) ;
 int le16_to_cpu (scalar_t__) ;
 int usb_int_regs_length (unsigned int) ;
 int zd_usb_dev (struct zd_usb*) ;

__attribute__((used)) static bool check_read_regs(struct zd_usb *usb, struct usb_req_read_regs *req,
       unsigned int count)
{
 int i;
 struct zd_usb_interrupt *intr = &usb->intr;
 struct read_regs_int *rr = &intr->read_regs;
 struct usb_int_regs *regs = (struct usb_int_regs *)rr->buffer;




 if (rr->length < usb_int_regs_length(count)) {
  dev_dbg_f(zd_usb_dev(usb),
    "error: actual length %d less than expected %d\n",
    rr->length, usb_int_regs_length(count));
  return 0;
 }

 if (rr->length > sizeof(rr->buffer)) {
  dev_dbg_f(zd_usb_dev(usb),
    "error: actual length %d exceeds buffer size %zu\n",
    rr->length, sizeof(rr->buffer));
  return 0;
 }

 for (i = 0; i < count; i++) {
  struct reg_data *rd = &regs->regs[i];
  if (rd->addr != req->addr[i]) {
   dev_dbg_f(zd_usb_dev(usb),
     "rd[%d] addr %#06hx expected %#06hx\n", i,
     le16_to_cpu(rd->addr),
     le16_to_cpu(req->addr[i]));
   return 0;
  }
 }

 return 1;
}
