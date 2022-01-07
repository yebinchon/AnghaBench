
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ expires; } ;
struct TYPE_7__ {scalar_t__ tx_xmtlen; } ;
struct TYPE_8__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {int debug; scalar_t__ tx_cnt; char* dlog; TYPE_4__ dbusytimer; int HW_Flags; TYPE_2__ dc; TYPE_3__* tx_skb; } ;
typedef scalar_t__ WORD ;
struct TYPE_9__ {scalar_t__ len; int* data; } ;
typedef int BYTE ;


 int AmdIrqOff (struct IsdnCardState*) ;
 int AmdIrqOn (struct IsdnCardState*) ;
 int DBUSY_TIMER_VALUE ;
 int FLG_DBUSY_TIMER ;
 int HIBYTE (scalar_t__) ;
 int HZ ;
 int L1_DEB_ISAC ;
 int L1_DEB_ISAC_FIFO ;
 int LOBYTE (scalar_t__) ;
 int QuickHex (char*,int*,scalar_t__) ;
 int add_timer (TYPE_4__*) ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int del_timer (TYPE_4__*) ;
 int init_timer (TYPE_4__*) ;
 scalar_t__ jiffies ;
 int rByteAMD (struct IsdnCardState*,int) ;
 scalar_t__ rWordAMD (struct IsdnCardState*,int) ;
 int skb_pull (TYPE_3__*,scalar_t__) ;
 int sprintf (char*,char*,scalar_t__) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wByteAMD (struct IsdnCardState*,int,int) ;
 int wWordAMD (struct IsdnCardState*,int,scalar_t__) ;

__attribute__((used)) static void
Amd7930_fill_Dfifo(struct IsdnCardState *cs)
{

        WORD dtcrr, dtcrw, len, count;
        BYTE txstat, dmr3;
        BYTE *ptr, *deb_ptr;

 if ((cs->debug & L1_DEB_ISAC) && !(cs->debug & L1_DEB_ISAC_FIFO))
  debugl1(cs, "Amd7930: fill_Dfifo");

 if ((!cs->tx_skb) || (cs->tx_skb->len <= 0))
  return;

        dtcrw = 0;
        if(!cs->dc.amd7930.tx_xmtlen)

                len = dtcrw = cs->tx_skb->len;

        else len = cs->dc.amd7930.tx_xmtlen;



 AmdIrqOff(cs);

        deb_ptr = ptr = cs->tx_skb->data;


        txstat = 0x10;
        while((txstat & 0x10) && (cs->tx_cnt < len)) {
                wByteAMD(cs, 0x04, *ptr);
                ptr++;
                cs->tx_cnt++;
                txstat= rByteAMD(cs, 0x07);
        }
        count = ptr - cs->tx_skb->data;
 skb_pull(cs->tx_skb, count);


        dtcrr = rWordAMD(cs, 0x85);
        dmr3 = rByteAMD(cs, 0x8E);

 if (cs->debug & L1_DEB_ISAC) {
  debugl1(cs, "Amd7930: fill_Dfifo, DMR3: 0x%02X, DTCR read: 0x%04X write: 0x%02X 0x%02X", dmr3, dtcrr, LOBYTE(dtcrw), HIBYTE(dtcrw));
        }


        if(!cs->dc.amd7930.tx_xmtlen) {
                wWordAMD(cs, 0x85, dtcrw);
                cs->dc.amd7930.tx_xmtlen = dtcrw;
        }

 if (test_and_set_bit(FLG_DBUSY_TIMER, &cs->HW_Flags)) {
  debugl1(cs, "Amd7930: fill_Dfifo dbusytimer running");
  del_timer(&cs->dbusytimer);
 }
 init_timer(&cs->dbusytimer);
 cs->dbusytimer.expires = jiffies + ((DBUSY_TIMER_VALUE * HZ) / 1000);
 add_timer(&cs->dbusytimer);

 if (cs->debug & L1_DEB_ISAC_FIFO) {
  char *t = cs->dlog;

  t += sprintf(t, "Amd7930: fill_Dfifo cnt: %d |", count);
  QuickHex(t, deb_ptr, count);
  debugl1(cs, cs->dlog);
 }

        AmdIrqOn(cs);
}
