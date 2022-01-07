
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; int actual_length; TYPE_1__* dev; scalar_t__ context; } ;
struct lbs_private {scalar_t__ dnld_sent; } ;
struct if_usb_card {struct lbs_private* priv; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DNLD_BOOTCMD_SENT ;
 int lbs_deb_usb2 (int *,char*,...) ;
 int lbs_host_to_card_done (struct lbs_private*) ;
 int lbs_pr_info (char*,scalar_t__) ;

__attribute__((used)) static void if_usb_write_bulk_callback(struct urb *urb)
{
 struct if_usb_card *cardp = (struct if_usb_card *) urb->context;



 if (urb->status == 0) {
  struct lbs_private *priv = cardp->priv;

  lbs_deb_usb2(&urb->dev->dev, "URB status is successful\n");
  lbs_deb_usb2(&urb->dev->dev, "Actual length transmitted %d\n",
        urb->actual_length);




  if (priv && priv->dnld_sent != DNLD_BOOTCMD_SENT)
   lbs_host_to_card_done(priv);
 } else {

  lbs_pr_info("URB in failure status: %d\n", urb->status);
 }

 return;
}
