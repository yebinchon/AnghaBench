
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct IsdnCardState {int debug; int tx_cnt; char* dlog; TYPE_2__ dbusytimer; int HW_Flags; int (* writeisac ) (struct IsdnCardState*,int ,int) ;int (* writeisacfifo ) (struct IsdnCardState*,int*,int) ;TYPE_1__* tx_skb; } ;
struct TYPE_5__ {int len; int* data; } ;


 int DBUSY_TIMER_VALUE ;
 int D_FIFO_SIZE ;
 int FLG_DBUSY_TIMER ;
 int HZ ;
 int IPACX_CMDRD ;
 int L1_DEB_ISAC ;
 int L1_DEB_ISAC_FIFO ;
 int QuickHex (char*,int*,int) ;
 int add_timer (TYPE_2__*) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int del_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int skb_pull (TYPE_1__*,int) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct IsdnCardState*,int*,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
dch_fill_fifo(struct IsdnCardState *cs)
{
 int count;
 u_char cmd, *ptr;

 if ((cs->debug &L1_DEB_ISAC) && !(cs->debug &L1_DEB_ISAC_FIFO))
  debugl1(cs, "dch_fill_fifo()");

 if (!cs->tx_skb) return;
 count = cs->tx_skb->len;
 if (count <= 0) return;

 if (count > D_FIFO_SIZE) {
  count = D_FIFO_SIZE;
  cmd = 0x08;
 } else {
  cmd = 0x0A;
 }

 ptr = cs->tx_skb->data;
 skb_pull(cs->tx_skb, count);
 cs->tx_cnt += count;
 cs->writeisacfifo(cs, ptr, count);
 cs->writeisac(cs, IPACX_CMDRD, cmd);


 if (test_and_set_bit(FLG_DBUSY_TIMER, &cs->HW_Flags)) {
  debugl1(cs, "dch_fill_fifo dbusytimer running");
  del_timer(&cs->dbusytimer);
 }
 init_timer(&cs->dbusytimer);
 cs->dbusytimer.expires = jiffies + ((DBUSY_TIMER_VALUE * HZ)/1000);
 add_timer(&cs->dbusytimer);

 if (cs->debug &L1_DEB_ISAC_FIFO) {
  char *t = cs->dlog;

  t += sprintf(t, "dch_fill_fifo() cnt %d", count);
  QuickHex(t, ptr, count);
  debugl1(cs, cs->dlog);
 }
}
