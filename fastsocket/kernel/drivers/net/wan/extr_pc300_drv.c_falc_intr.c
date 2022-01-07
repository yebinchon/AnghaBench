
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ media; } ;
typedef TYPE_2__ pc300chconf_t ;
struct TYPE_10__ {int conf; } ;
typedef TYPE_3__ pc300ch_t ;
struct TYPE_8__ {int nchan; } ;
struct TYPE_11__ {TYPE_3__* chan; TYPE_1__ hw; } ;
typedef TYPE_4__ pc300_t ;


 scalar_t__ IF_IFACE_T1 ;
 int falc_e1_intr (TYPE_4__*,int) ;
 int falc_t1_intr (TYPE_4__*,int) ;

__attribute__((used)) static void falc_intr(pc300_t * card)
{
 int ch;

 for (ch = 0; ch < card->hw.nchan; ch++) {
  pc300ch_t *chan = &card->chan[ch];
  pc300chconf_t *conf = (pc300chconf_t *) & chan->conf;

  if (conf->media == IF_IFACE_T1) {
   falc_t1_intr(card, ch);
  } else {
   falc_e1_intr(card, ch);
  }
 }
}
