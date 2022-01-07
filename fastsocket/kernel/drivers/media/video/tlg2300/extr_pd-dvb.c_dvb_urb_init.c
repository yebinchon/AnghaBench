
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pd_dvb_adapter {int ep_addr; TYPE_1__* pd_device; scalar_t__* urb_array; } ;
struct TYPE_2__ {int udev; } ;


 int DVB_SBUF_NUM ;
 int DVB_URB_BUF_SIZE ;
 int GFP_KERNEL ;
 int alloc_bulk_urbs_generic (scalar_t__*,int ,int ,int ,int ,int ,int ,struct pd_dvb_adapter*) ;
 int dvb_urb_irq ;

__attribute__((used)) static int dvb_urb_init(struct pd_dvb_adapter *pd_dvb)
{
 if (pd_dvb->urb_array[0])
  return 0;

 alloc_bulk_urbs_generic(pd_dvb->urb_array, DVB_SBUF_NUM,
   pd_dvb->pd_device->udev, pd_dvb->ep_addr,
   DVB_URB_BUF_SIZE, GFP_KERNEL,
   dvb_urb_irq, pd_dvb);
 return 0;
}
