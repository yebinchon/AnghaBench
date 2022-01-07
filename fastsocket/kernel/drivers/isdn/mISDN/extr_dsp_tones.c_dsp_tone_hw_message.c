
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ peer; scalar_t__ (* recv ) (scalar_t__,struct sk_buff*) ;} ;
struct dsp {TYPE_1__ ch; } ;


 int GFP_ATOMIC ;
 int HFC_SPL_LOOP_OFF ;
 int HFC_SPL_LOOP_ON ;
 int PH_CONTROL_REQ ;
 struct sk_buff* _alloc_mISDN_skb (int ,int ,int,int *,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ stub1 (scalar_t__,struct sk_buff*) ;

__attribute__((used)) static void
dsp_tone_hw_message(struct dsp *dsp, u8 *sample, int len)
{
 struct sk_buff *nskb;


 nskb = _alloc_mISDN_skb(PH_CONTROL_REQ,
  (len) ? HFC_SPL_LOOP_ON : HFC_SPL_LOOP_OFF, len, sample,
  GFP_ATOMIC);
 if (nskb) {
  if (dsp->ch.peer) {
   if (dsp->ch.recv(dsp->ch.peer, nskb))
    dev_kfree_skb(nskb);
  } else
   dev_kfree_skb(nskb);
 }
}
