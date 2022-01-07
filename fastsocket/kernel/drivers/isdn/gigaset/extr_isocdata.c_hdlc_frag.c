
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* bas; } ;
struct bc_state {int fcs; TYPE_3__* cs; int * skb; TYPE_2__ hw; int ignore; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int alignerrs; } ;


 scalar_t__ HW_HDR_LEN ;
 int PPP_INITFCS ;
 scalar_t__ SBUFSIZE ;
 int * dev_alloc_skb (scalar_t__) ;
 int dev_err (int ,char*) ;
 int dev_notice (int ,char*,unsigned int) ;
 int gigaset_rcv_error (int *,TYPE_3__*,struct bc_state*) ;
 int hdlc_flush (struct bc_state*) ;
 int skb_reserve (int *,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void hdlc_frag(struct bc_state *bcs, unsigned inbits)
{
 if (unlikely(bcs->ignore)) {
  bcs->ignore--;
  hdlc_flush(bcs);
  return;
 }

 dev_notice(bcs->cs->dev, "received partial byte (%d bits)\n", inbits);
 bcs->hw.bas->alignerrs++;
 gigaset_rcv_error(bcs->skb, bcs->cs, bcs);

 if ((bcs->skb = dev_alloc_skb(SBUFSIZE + HW_HDR_LEN)) != ((void*)0))
  skb_reserve(bcs->skb, HW_HDR_LEN);
 else
  dev_err(bcs->cs->dev, "could not allocate skb\n");
 bcs->fcs = PPP_INITFCS;
}
