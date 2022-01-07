
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct if_sdio_card {int priv; } ;


 int E2BIG ;
 int ENOMEM ;
 int LBS_DEB_SDIO ;
 unsigned int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ;
 unsigned int NET_IP_ALIGN ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_sdio (char*,int) ;
 int lbs_process_rxed_packet (int ,struct sk_buff*) ;
 int memcpy (char*,int *,unsigned int) ;
 char* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int if_sdio_handle_data(struct if_sdio_card *card,
  u8 *buffer, unsigned size)
{
 int ret;
 struct sk_buff *skb;
 char *data;

 lbs_deb_enter(LBS_DEB_SDIO);

 if (size > MRVDRV_ETH_RX_PACKET_BUFFER_SIZE) {
  lbs_deb_sdio("response packet too large (%d bytes)\n",
   (int)size);
  ret = -E2BIG;
  goto out;
 }

 skb = dev_alloc_skb(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE + NET_IP_ALIGN);
 if (!skb) {
  ret = -ENOMEM;
  goto out;
 }

 skb_reserve(skb, NET_IP_ALIGN);

 data = skb_put(skb, size);

 memcpy(data, buffer, size);

 lbs_process_rxed_packet(card->priv, skb);

 ret = 0;

out:
 lbs_deb_leave_args(LBS_DEB_SDIO, "ret %d", ret);

 return ret;
}
