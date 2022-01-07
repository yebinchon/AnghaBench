
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bc_state {int fcs; TYPE_1__* cs; int * skb; int ignore; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ HW_HDR_LEN ;
 int PPP_INITFCS ;
 scalar_t__ SBUFSIZE ;
 int * dev_alloc_skb (scalar_t__) ;
 int dev_err (int ,char*) ;
 scalar_t__ likely (int ) ;
 int skb_reserve (int *,scalar_t__) ;
 int skb_trim (int *,int ) ;

__attribute__((used)) static inline void hdlc_flush(struct bc_state *bcs)
{

 if (likely(bcs->skb != ((void*)0)))
  skb_trim(bcs->skb, 0);
 else if (!bcs->ignore) {
  if ((bcs->skb = dev_alloc_skb(SBUFSIZE + HW_HDR_LEN)) != ((void*)0))
   skb_reserve(bcs->skb, HW_HDR_LEN);
  else
   dev_err(bcs->cs->dev, "could not allocate skb\n");
 }


 bcs->fcs = PPP_INITFCS;
}
