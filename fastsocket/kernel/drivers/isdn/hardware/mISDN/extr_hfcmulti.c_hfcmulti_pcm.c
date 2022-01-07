
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfc_multi {TYPE_1__* chan; } ;
struct TYPE_2__ {int protocol; } ;


 int mode_hfcmulti (struct hfc_multi*,int,int ,int,int,int,int) ;

__attribute__((used)) static void
hfcmulti_pcm(struct hfc_multi *hc, int ch, int slot_tx, int bank_tx,
    int slot_rx, int bank_rx)
{
 if (slot_rx < 0 || slot_rx < 0 || bank_tx < 0 || bank_rx < 0) {

  mode_hfcmulti(hc, ch, hc->chan[ch].protocol, -1, 0, -1, 0);
  return;
 }


 mode_hfcmulti(hc, ch, hc->chan[ch].protocol, slot_tx, bank_tx,
  slot_rx, bank_rx);
}
