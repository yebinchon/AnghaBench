
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_usb_card {int surprise_removed; int fw_wq; scalar_t__ fwdnldover; } ;


 int lbs_deb_usb (char*) ;
 int lbs_pr_err (char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void if_usb_fw_timeo(unsigned long priv)
{
 struct if_usb_card *cardp = (void *)priv;

 if (cardp->fwdnldover) {
  lbs_deb_usb("Download complete, no event. Assuming success\n");
 } else {
  lbs_pr_err("Download timed out\n");
  cardp->surprise_removed = 1;
 }
 wake_up(&cardp->fw_wq);
}
