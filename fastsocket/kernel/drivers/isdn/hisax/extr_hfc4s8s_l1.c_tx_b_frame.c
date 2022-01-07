
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int len; scalar_t__ truesize; int * data; } ;
struct hisax_if {int dummy; } ;
struct hfc4s8s_l1 {int st_num; TYPE_4__* hw; int enabled; } ;
struct TYPE_14__ {int (* l1l2 ) (struct hisax_if*,int,void*) ;} ;
struct TYPE_15__ {TYPE_2__ ifc; } ;
struct hfc4s8s_btype {scalar_t__ mode; int bchan; int tx_cnt; TYPE_3__ b_if; struct sk_buff* tx_skb; int tx_queue; struct hfc4s8s_l1* l1p; } ;
struct TYPE_13__ {int* fifo_slow_timer_service; } ;
struct TYPE_16__ {TYPE_1__ mr; } ;


 int A_F1 ;
 int A_F2 ;
 int A_FIFO_DATA0 ;
 int A_INC_RES_FIFO ;
 int A_Z1 ;
 int A_Z2 ;
 int CONFIRM ;
 scalar_t__ L1_MODE_HDLC ;
 scalar_t__ L1_MODE_NULL ;
 int MAX_F_CNT ;
 int PH_DATA ;
 int R_FIFO ;
 scalar_t__ Read_hfc16 (TYPE_4__*,int ) ;
 int Read_hfc16_stable (TYPE_4__*,int ) ;
 int Read_hfc8 (TYPE_4__*,int ) ;
 int Read_hfc8_stable (TYPE_4__*,int ) ;
 int SetRegAddr (TYPE_4__*,int ) ;
 int Write_hfc8 (TYPE_4__*,int ,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fWrite_hfc32 (TYPE_4__*,unsigned long,...) ;
 int fWrite_hfc8 (TYPE_4__*,int ,...) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct hisax_if*,int,void*) ;
 int wait_busy (TYPE_4__*) ;

__attribute__((used)) static void
tx_b_frame(struct hfc4s8s_btype *bch)
{
 struct sk_buff *skb;
 struct hfc4s8s_l1 *l1 = bch->l1p;
 u_char *cp;
 int cnt, max, hdlc_num;
 long ack_len = 0;

 if (!l1->enabled || (bch->mode == L1_MODE_NULL))
  return;


 Write_hfc8(l1->hw, R_FIFO,
     (l1->st_num * 8 + ((bch->bchan == 1) ? 0 : 2)));
 wait_busy(l1->hw);
 do {

  if (bch->mode == L1_MODE_HDLC) {
   hdlc_num = Read_hfc8(l1->hw, A_F1) & MAX_F_CNT;
   hdlc_num -=
       (Read_hfc8_stable(l1->hw, A_F2) & MAX_F_CNT);
   if (hdlc_num < 0)
    hdlc_num += 16;
   if (hdlc_num >= 15)
    break;
  } else
   hdlc_num = 0;

  if (!(skb = bch->tx_skb)) {
   if (!(skb = skb_dequeue(&bch->tx_queue))) {
    l1->hw->mr.fifo_slow_timer_service[l1->
           st_num]
        &= ~((bch->bchan == 1) ? 1 : 4);
    break;
   }
   bch->tx_skb = skb;
   bch->tx_cnt = 0;
  }

  if (!hdlc_num)
   l1->hw->mr.fifo_slow_timer_service[l1->st_num] |=
       ((bch->bchan == 1) ? 1 : 4);
  else
   l1->hw->mr.fifo_slow_timer_service[l1->st_num] &=
       ~((bch->bchan == 1) ? 1 : 4);

  max = Read_hfc16_stable(l1->hw, A_Z2);
  max -= Read_hfc16(l1->hw, A_Z1);
  if (max <= 0)
   max += 384;
  max--;

  if (max < 16)
   break;

  cnt = skb->len - bch->tx_cnt;
  if (cnt > max)
   cnt = max;
  cp = skb->data + bch->tx_cnt;
  bch->tx_cnt += cnt;


  SetRegAddr(l1->hw, A_FIFO_DATA0);

  while (cnt >= 4) {




   fWrite_hfc32(l1->hw, *(unsigned long *) cp);

   cp += 4;
   cnt -= 4;
  }

  while (cnt--)



   fWrite_hfc8(l1->hw, *cp++);


  if (bch->tx_cnt >= skb->len) {
   if (bch->mode == L1_MODE_HDLC) {

    Write_hfc8(l1->hw, A_INC_RES_FIFO, 1);
   }
   ack_len += skb->truesize;
   bch->tx_skb = ((void*)0);
   bch->tx_cnt = 0;
   dev_kfree_skb(skb);
  } else

   Write_hfc8(l1->hw, R_FIFO,
       (l1->st_num * 8 +
        ((bch->bchan == 1) ? 0 : 2)));
  wait_busy(l1->hw);
 } while (1);

 if (ack_len)
  bch->b_if.ifc.l1l2((struct hisax_if *) &bch->b_if,
       PH_DATA | CONFIRM, (void *) ack_len);
}
