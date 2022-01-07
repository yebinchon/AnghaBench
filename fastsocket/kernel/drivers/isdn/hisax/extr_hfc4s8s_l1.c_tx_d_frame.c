
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int* data; long len; long truesize; } ;
struct TYPE_4__ {int (* l1l2 ) (TYPE_2__*,int,void*) ;} ;
struct TYPE_3__ {TYPE_2__ ifc; } ;
struct hfc4s8s_l1 {int l1_state; int st_num; long tx_cnt; int hw; int d_tx_queue; TYPE_1__ d_if; } ;


 int A_F1 ;
 int A_F2 ;
 int A_FIFO_DATA0 ;
 int A_INC_RES_FIFO ;
 int CONFIRM ;
 int MAX_F_CNT ;
 int PH_DATA ;
 int R_FIFO ;
 int Read_hfc8 (int ,int ) ;
 int Read_hfc8_stable (int ,int ) ;
 int SetRegAddr (int ,int ) ;
 int Write_hfc8 (int ,int ,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fWrite_hfc32 (int ,unsigned long,...) ;
 int fWrite_hfc8 (int ,int ,...) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (TYPE_2__*,int,void*) ;
 int wait_busy (int ) ;

__attribute__((used)) static void
tx_d_frame(struct hfc4s8s_l1 *l1p)
{
 struct sk_buff *skb;
 u_char f1, f2;
 u_char *cp;
 long cnt;

 if (l1p->l1_state != 7)
  return;


 Write_hfc8(l1p->hw, R_FIFO, (l1p->st_num * 8 + 4));
 wait_busy(l1p->hw);

 f1 = Read_hfc8(l1p->hw, A_F1);
 f2 = Read_hfc8_stable(l1p->hw, A_F2);

 if ((f1 ^ f2) & MAX_F_CNT)
  return;

 if (l1p->tx_cnt > 0) {
  cnt = l1p->tx_cnt;
  l1p->tx_cnt = 0;
  l1p->d_if.ifc.l1l2(&l1p->d_if.ifc, PH_DATA | CONFIRM,
       (void *) cnt);
 }

 if ((skb = skb_dequeue(&l1p->d_tx_queue))) {
  cp = skb->data;
  cnt = skb->len;

  SetRegAddr(l1p->hw, A_FIFO_DATA0);


  while (cnt >= 4) {




   SetRegAddr(l1p->hw, A_FIFO_DATA0);
   fWrite_hfc32(l1p->hw, *(unsigned long *) cp);

   cp += 4;
   cnt -= 4;
  }





  while (cnt--)
   fWrite_hfc8(l1p->hw, *cp++);


  l1p->tx_cnt = skb->truesize;
  Write_hfc8(l1p->hw, A_INC_RES_FIFO, 1);
  wait_busy(l1p->hw);

  dev_kfree_skb(skb);
 }
}
