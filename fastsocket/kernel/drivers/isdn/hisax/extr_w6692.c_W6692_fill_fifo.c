
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct IsdnCardState {int debug; int tx_cnt; char* dlog; TYPE_2__ dbusytimer; int HW_Flags; int (* writeW6692 ) (struct IsdnCardState*,int ,int) ;int (* writeW6692fifo ) (struct IsdnCardState*,int *,int) ;TYPE_1__* tx_skb; } ;
struct TYPE_5__ {int len; int * data; } ;


 int DBUSY_TIMER_VALUE ;
 int FLG_DBUSY_TIMER ;
 int HZ ;
 int L1_DEB_ISAC ;
 int L1_DEB_ISAC_FIFO ;
 int QuickHex (char*,int *,int) ;
 int W_D_CMDR ;
 int W_D_CMDR_XME ;
 int W_D_CMDR_XMS ;
 int W_D_FIFO_THRESH ;
 int add_timer (TYPE_2__*) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int del_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int skb_pull (TYPE_1__*,int) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct IsdnCardState*,int *,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
W6692_fill_fifo(struct IsdnCardState *cs)
{
 int count, more;
 u_char *ptr;

 if ((cs->debug & L1_DEB_ISAC) && !(cs->debug & L1_DEB_ISAC_FIFO))
  debugl1(cs, "W6692_fill_fifo");

 if (!cs->tx_skb)
  return;

 count = cs->tx_skb->len;
 if (count <= 0)
  return;

 more = 0;
 if (count > W_D_FIFO_THRESH) {
  more = !0;
  count = W_D_FIFO_THRESH;
 }
 ptr = cs->tx_skb->data;
 skb_pull(cs->tx_skb, count);
 cs->tx_cnt += count;
 cs->writeW6692fifo(cs, ptr, count);
 cs->writeW6692(cs, W_D_CMDR, more ? W_D_CMDR_XMS : (W_D_CMDR_XMS | W_D_CMDR_XME));
 if (test_and_set_bit(FLG_DBUSY_TIMER, &cs->HW_Flags)) {
  debugl1(cs, "W6692_fill_fifo dbusytimer running");
  del_timer(&cs->dbusytimer);
 }
 init_timer(&cs->dbusytimer);
 cs->dbusytimer.expires = jiffies + ((DBUSY_TIMER_VALUE * HZ) / 1000);
 add_timer(&cs->dbusytimer);
 if (cs->debug & L1_DEB_ISAC_FIFO) {
  char *t = cs->dlog;

  t += sprintf(t, "W6692_fill_fifo cnt %d", count);
  QuickHex(t, ptr, count);
  debugl1(cs, cs->dlog);
 }
}
