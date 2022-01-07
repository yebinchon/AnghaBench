
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int nr; scalar_t__ maxlen; int debug; TYPE_3__* rx_skb; } ;
struct hscx_hw {int log; TYPE_2__* ip; TYPE_1__ bch; scalar_t__ off; } ;
struct TYPE_8__ {scalar_t__ len; } ;
struct TYPE_7__ {char* name; int type; int hw; int (* read_fifo ) (int ,scalar_t__,scalar_t__*,scalar_t__) ;} ;


 int DEBUG_HW_BFIFO ;
 int DUMP_PREFIX_OFFSET ;
 int GFP_ATOMIC ;
 scalar_t__ IPACX_RFIFOB ;
 int IPAC_TYPE_IPACX ;
 int hscx_cmdr (struct hscx_hw*,int) ;
 TYPE_3__* mI_alloc_skb (scalar_t__,int ) ;
 int pr_debug (char*,char*,scalar_t__,...) ;
 int pr_info (char*,char*) ;
 int print_hex_dump_bytes (int ,int ,scalar_t__*,scalar_t__) ;
 scalar_t__* skb_put (TYPE_3__*,scalar_t__) ;
 int skb_trim (TYPE_3__*,int ) ;
 int snprintf (int ,int,char*,int,char*,scalar_t__) ;
 int stub1 (int ,scalar_t__,scalar_t__*,scalar_t__) ;
 int stub2 (int ,scalar_t__,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void
hscx_empty_fifo(struct hscx_hw *hscx, u8 count)
{
 u8 *p;

 pr_debug("%s: B%1d %d\n", hscx->ip->name, hscx->bch.nr, count);
 if (!hscx->bch.rx_skb) {
  hscx->bch.rx_skb = mI_alloc_skb(hscx->bch.maxlen, GFP_ATOMIC);
  if (!hscx->bch.rx_skb) {
   pr_info("%s: B receive out of memory\n",
    hscx->ip->name);
   hscx_cmdr(hscx, 0x80);
   return;
  }
 }
 if ((hscx->bch.rx_skb->len + count) > hscx->bch.maxlen) {
  pr_debug("%s: overrun %d\n", hscx->ip->name,
   hscx->bch.rx_skb->len + count);
  skb_trim(hscx->bch.rx_skb, 0);
  hscx_cmdr(hscx, 0x80);
  return;
 }
 p = skb_put(hscx->bch.rx_skb, count);

 if (hscx->ip->type & IPAC_TYPE_IPACX)
  hscx->ip->read_fifo(hscx->ip->hw,
   hscx->off + IPACX_RFIFOB, p, count);
 else
  hscx->ip->read_fifo(hscx->ip->hw,
   hscx->off, p, count);

 hscx_cmdr(hscx, 0x80);

 if (hscx->bch.debug & DEBUG_HW_BFIFO) {
  snprintf(hscx->log, 64, "B%1d-recv %s %d ",
   hscx->bch.nr, hscx->ip->name, count);
  print_hex_dump_bytes(hscx->log, DUMP_PREFIX_OFFSET, p, count);
 }
}
