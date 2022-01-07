
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfc_multi {TYPE_1__* chan; } ;
struct TYPE_2__ {int conf; int bank_rx; int slot_rx; int bank_tx; int slot_tx; int protocol; } ;


 int mode_hfcmulti (struct hfc_multi*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
hfcmulti_conf(struct hfc_multi *hc, int ch, int num)
{
 if (num >= 0 && num <= 7)
  hc->chan[ch].conf = num;
 else
  hc->chan[ch].conf = -1;
 mode_hfcmulti(hc, ch, hc->chan[ch].protocol, hc->chan[ch].slot_tx,
     hc->chan[ch].bank_tx, hc->chan[ch].slot_rx,
     hc->chan[ch].bank_rx);
}
