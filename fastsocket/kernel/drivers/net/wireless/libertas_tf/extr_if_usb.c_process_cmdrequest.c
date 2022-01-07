
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sk_buff {int dummy; } ;
struct lbtf_private {int driver_lock; int cmd_resp_buff; } ;
struct if_usb_card {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int LBS_CMD_BUFFER_SIZE ;
 int MESSAGE_HEADER_LEN ;
 int in_interrupt () ;
 int kfree_skb (struct sk_buff*) ;
 int lbtf_cmd_response_rx (struct lbtf_private*) ;
 int lbtf_deb_usbd (int *,char*) ;
 int memcpy (int ,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void process_cmdrequest(int recvlength, uint8_t *recvbuff,
          struct sk_buff *skb,
          struct if_usb_card *cardp,
          struct lbtf_private *priv)
{
 if (recvlength > LBS_CMD_BUFFER_SIZE) {
  lbtf_deb_usbd(&cardp->udev->dev,
        "The receive buffer is too large\n");
  kfree_skb(skb);
  return;
 }

 BUG_ON(!in_interrupt());

 spin_lock(&priv->driver_lock);
 memcpy(priv->cmd_resp_buff, recvbuff + MESSAGE_HEADER_LEN,
        recvlength - MESSAGE_HEADER_LEN);
 kfree_skb(skb);
 lbtf_cmd_response_rx(priv);
 spin_unlock(&priv->driver_lock);
}
