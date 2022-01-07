
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int falc; } ;
typedef TYPE_2__ pc300ch_t ;
struct TYPE_7__ {scalar_t__ cpld_reg1; scalar_t__ falcbase; } ;
struct TYPE_9__ {TYPE_1__ hw; int * chan; } ;
typedef TYPE_3__ pc300_t ;
struct TYPE_10__ {int loop_active; } ;
typedef TYPE_4__ falc_t ;


 int CPLD_REG1_FALC_CTS ;
 int CPLD_REG1_FALC_DCD ;
 int cpc_readb (scalar_t__) ;
 int cpc_writeb (scalar_t__,int) ;
 int falc_close_all_timeslots (TYPE_3__*,int) ;

__attribute__((used)) static void falc_disable_comm(pc300_t * card, int ch)
{
 pc300ch_t *chan = (pc300ch_t *) & card->chan[ch];
 falc_t *pfalc = (falc_t *) & chan->falc;

 if (pfalc->loop_active != 2) {
  falc_close_all_timeslots(card, ch);
 }

 cpc_writeb(card->hw.falcbase + card->hw.cpld_reg1,
     cpc_readb(card->hw.falcbase + card->hw.cpld_reg1) |
     ((CPLD_REG1_FALC_DCD | CPLD_REG1_FALC_CTS) << (2 * ch)));
}
