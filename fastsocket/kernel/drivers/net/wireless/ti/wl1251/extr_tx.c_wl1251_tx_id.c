
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {struct sk_buff** tx_frames; } ;
struct sk_buff {int dummy; } ;


 int EBUSY ;
 int FW_TX_CMPLT_BLOCK_SIZE ;

__attribute__((used)) static int wl1251_tx_id(struct wl1251 *wl, struct sk_buff *skb)
{
 int i;

 for (i = 0; i < FW_TX_CMPLT_BLOCK_SIZE; i++)
  if (wl->tx_frames[i] == ((void*)0)) {
   wl->tx_frames[i] = skb;
   return i;
  }

 return -EBUSY;
}
