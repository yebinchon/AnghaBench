
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int falc; } ;
typedef TYPE_1__ pc300ch_t ;
struct TYPE_8__ {TYPE_1__* chan; } ;
typedef TYPE_2__ pc300_t ;
struct TYPE_9__ {scalar_t__ prbs; scalar_t__ loss_mfa; scalar_t__ loss_fa; scalar_t__ yellow_alarm; scalar_t__ blue_alarm; scalar_t__ red_alarm; int ebc; int cec; int cvc; int fec; int bec; int rai; int es; int sec; int ais; int lmfa; int farec; int lfa; int losr; int los; int pden; int num_channels; scalar_t__ active; scalar_t__ sync; } ;
typedef TYPE_3__ falc_t ;


 int CPC_LOCK (TYPE_2__*,unsigned long) ;
 int CPC_UNLOCK (TYPE_2__*,unsigned long) ;
 int printk (char*,...) ;

__attribute__((used)) static void cpc_falc_status(pc300_t * card, int ch)
{
 pc300ch_t *chan = &card->chan[ch];
 falc_t *pfalc = (falc_t *) & chan->falc;
 unsigned long flags;

 CPC_LOCK(card, flags);
 printk("CH%d:   %s %s  %d channels\n",
        ch, (pfalc->sync ? "SYNC" : ""), (pfalc->active ? "ACTIVE" : ""),
        pfalc->num_channels);

 printk("        pden=%d,  los=%d,  losr=%d,  lfa=%d,  farec=%d\n",
        pfalc->pden, pfalc->los, pfalc->losr, pfalc->lfa, pfalc->farec);
 printk("        lmfa=%d,  ais=%d,  sec=%d,  es=%d,  rai=%d\n",
        pfalc->lmfa, pfalc->ais, pfalc->sec, pfalc->es, pfalc->rai);
 printk("        bec=%d,  fec=%d,  cvc=%d,  cec=%d,  ebc=%d\n",
        pfalc->bec, pfalc->fec, pfalc->cvc, pfalc->cec, pfalc->ebc);

 printk("\n");
 printk("        STATUS: %s  %s  %s  %s  %s  %s\n",
        (pfalc->red_alarm ? "RED" : ""),
        (pfalc->blue_alarm ? "BLU" : ""),
        (pfalc->yellow_alarm ? "YEL" : ""),
        (pfalc->loss_fa ? "LFA" : ""),
        (pfalc->loss_mfa ? "LMF" : ""), (pfalc->prbs ? "PRB" : ""));
 CPC_UNLOCK(card, flags);
}
