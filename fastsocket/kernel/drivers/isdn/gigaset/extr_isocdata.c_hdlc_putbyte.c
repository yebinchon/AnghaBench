
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* bas; } ;
struct bc_state {TYPE_4__* skb; TYPE_3__ hw; TYPE_1__* cs; int fcs; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_7__ {int giants; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ SBUFSIZE ;
 unsigned char* __skb_put (TYPE_4__*,int) ;
 int crc_ccitt_byte (int ,unsigned char) ;
 int dev_kfree_skb_any (TYPE_4__*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void hdlc_putbyte(unsigned char c, struct bc_state *bcs)
{
 bcs->fcs = crc_ccitt_byte(bcs->fcs, c);
 if (unlikely(bcs->skb == ((void*)0))) {

  return;
 }
 if (unlikely(bcs->skb->len == SBUFSIZE)) {
  dev_warn(bcs->cs->dev, "received oversized packet discarded\n");
  bcs->hw.bas->giants++;
  dev_kfree_skb_any(bcs->skb);
  bcs->skb = ((void*)0);
  return;
 }
 *__skb_put(bcs->skb, 1) = c;
}
