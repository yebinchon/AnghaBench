
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct lbs_private {scalar_t__ resp_idx; int* resp_len; int driver_lock; int * resp_buf; } ;
struct if_usb_card {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int LBS_CMD_BUFFER_SIZE ;
 int MESSAGE_HEADER_LEN ;
 int in_interrupt () ;
 int kfree_skb (struct sk_buff*) ;
 int lbs_deb_usbd (int *,char*) ;
 int lbs_notify_command_response (struct lbs_private*,size_t) ;
 int memcpy (int ,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void process_cmdrequest(int recvlength, uint8_t *recvbuff,
          struct sk_buff *skb,
          struct if_usb_card *cardp,
          struct lbs_private *priv)
{
 u8 i;

 if (recvlength > LBS_CMD_BUFFER_SIZE) {
  lbs_deb_usbd(&cardp->udev->dev,
        "The receive buffer is too large\n");
  kfree_skb(skb);
  return;
 }

 BUG_ON(!in_interrupt());

 spin_lock(&priv->driver_lock);

 i = (priv->resp_idx == 0) ? 1 : 0;
 BUG_ON(priv->resp_len[i]);
 priv->resp_len[i] = (recvlength - MESSAGE_HEADER_LEN);
 memcpy(priv->resp_buf[i], recvbuff + MESSAGE_HEADER_LEN,
  priv->resp_len[i]);
 kfree_skb(skb);
 lbs_notify_command_response(priv, i);

 spin_unlock(&priv->driver_lock);

 lbs_deb_usbd(&cardp->udev->dev,
      "Wake up main thread to handle cmd response\n");
}
