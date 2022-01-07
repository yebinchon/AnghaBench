
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int* data; int len; } ;
struct btsdio_data {TYPE_2__* hdev; int func; } ;
struct TYPE_6__ {int pkt_type; } ;
struct TYPE_4__ {int byte_tx; } ;
struct TYPE_5__ {TYPE_1__ stat; int name; } ;


 int BT_DBG (char*,int ) ;
 int REG_PC_WRT ;
 int REG_TDAT ;
 TYPE_3__* bt_cb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int sdio_writeb (int ,int,int ,int *) ;
 int sdio_writesb (int ,int ,int*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int btsdio_tx_packet(struct btsdio_data *data, struct sk_buff *skb)
{
 int err;

 BT_DBG("%s", data->hdev->name);


 skb_push(skb, 4);
 skb->data[0] = (skb->len & 0x0000ff);
 skb->data[1] = (skb->len & 0x00ff00) >> 8;
 skb->data[2] = (skb->len & 0xff0000) >> 16;
 skb->data[3] = bt_cb(skb)->pkt_type;

 err = sdio_writesb(data->func, REG_TDAT, skb->data, skb->len);
 if (err < 0) {
  skb_pull(skb, 4);
  sdio_writeb(data->func, 0x01, REG_PC_WRT, ((void*)0));
  return err;
 }

 data->hdev->stat.byte_tx += skb->len;

 kfree_skb(skb);

 return 0;
}
