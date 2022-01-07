
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int debug; TYPE_2__* rx_skb; int nr; int state; } ;
struct hscx_hw {int fifo_size; TYPE_3__ bch; TYPE_1__* ip; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int type; int name; } ;


 int DEBUG_HW_BCHANNEL ;
 int IPACX_RBCLB ;
 int IPACX_RSTAB ;
 int IPAC_RBCLB ;
 int IPAC_RSTAB ;
 int IPAC_TYPE_IPACX ;
 int ReadHSCX (struct hscx_hw*,int ) ;
 int hscx_cmdr (struct hscx_hw*,int) ;
 int hscx_empty_fifo (struct hscx_hw*,int) ;
 int pr_debug (char*,int ,int ,int) ;
 int pr_notice (char*,int ,int ,...) ;
 int recv_Bchannel (TYPE_3__*,int ) ;
 int skb_trim (TYPE_2__*,int) ;

__attribute__((used)) static void
ipac_rme(struct hscx_hw *hx)
{
 int count;
 u8 rstab;

 if (hx->ip->type & IPAC_TYPE_IPACX)
  rstab = ReadHSCX(hx, IPACX_RSTAB);
 else
  rstab = ReadHSCX(hx, IPAC_RSTAB);
 pr_debug("%s: B%1d RSTAB %02x\n", hx->ip->name, hx->bch.nr, rstab);
 if ((rstab & 0xf0) != 0xa0) {

  if (!(rstab & 0x80)) {
   if (hx->bch.debug & DEBUG_HW_BCHANNEL)
    pr_notice("%s: B%1d invalid frame\n",
     hx->ip->name, hx->bch.nr);
  }
  if (rstab & 0x40) {
   if (hx->bch.debug & DEBUG_HW_BCHANNEL)
    pr_notice("%s: B%1d RDO proto=%x\n",
     hx->ip->name, hx->bch.nr,
     hx->bch.state);
  }
  if (!(rstab & 0x20)) {
   if (hx->bch.debug & DEBUG_HW_BCHANNEL)
    pr_notice("%s: B%1d CRC error\n",
     hx->ip->name, hx->bch.nr);
  }
  hscx_cmdr(hx, 0x80);
  return;
 }
 if (hx->ip->type & IPAC_TYPE_IPACX)
  count = ReadHSCX(hx, IPACX_RBCLB);
 else
  count = ReadHSCX(hx, IPAC_RBCLB);
 count &= (hx->fifo_size - 1);
 if (count == 0)
  count = hx->fifo_size;
 hscx_empty_fifo(hx, count);
 if (!hx->bch.rx_skb)
  return;
 if (hx->bch.rx_skb->len < 2) {
  pr_debug("%s: B%1d frame to short %d\n",
   hx->ip->name, hx->bch.nr, hx->bch.rx_skb->len);
  skb_trim(hx->bch.rx_skb, 0);
 } else {
  skb_trim(hx->bch.rx_skb, hx->bch.rx_skb->len - 1);
  recv_Bchannel(&hx->bch, 0);
 }
}
