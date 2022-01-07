
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lme2510_state {TYPE_2__* lme_urb; int * buffer; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct TYPE_6__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_5__ {int udev; struct lme2510_state* priv; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int info (char*) ;
 int lme2510_int_response ;
 TYPE_2__* usb_alloc_urb (int ,int ) ;
 int * usb_buffer_alloc (int ,int,int ,int *) ;
 int usb_fill_int_urb (TYPE_2__*,int ,int ,int *,int,int ,struct dvb_usb_adapter*,int) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int lme2510_int_read(struct dvb_usb_adapter *adap)
{
 struct lme2510_state *lme_int = adap->dev->priv;

 lme_int->lme_urb = usb_alloc_urb(0, GFP_ATOMIC);

 if (lme_int->lme_urb == ((void*)0))
   return -ENOMEM;

 lme_int->buffer = usb_buffer_alloc(adap->dev->udev, 5000, GFP_ATOMIC,
     &lme_int->lme_urb->transfer_dma);

 if (lme_int->buffer == ((void*)0))
   return -ENOMEM;

 usb_fill_int_urb(lme_int->lme_urb,
    adap->dev->udev,
    usb_rcvintpipe(adap->dev->udev, 0xa),
    lme_int->buffer,
    4096,
    lme2510_int_response,
    adap,
    11);

 lme_int->lme_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 usb_submit_urb(lme_int->lme_urb, GFP_ATOMIC);
 info("INT Interupt Service Started");

 return 0;
}
