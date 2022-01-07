
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int chan; struct TYPE_8__* next; scalar_t__ msgid; scalar_t__ plci; int state; } ;
typedef TYPE_2__ capidrv_plci ;
struct TYPE_9__ {TYPE_1__* bchans; TYPE_2__* plci_list; } ;
typedef TYPE_3__ capidrv_contr ;
struct TYPE_7__ {TYPE_2__* plcip; } ;


 int GFP_ATOMIC ;
 int ST_PLCI_NONE ;
 TYPE_2__* kzalloc (int,int ) ;

__attribute__((used)) static capidrv_plci *new_plci(capidrv_contr * card, int chan)
{
 capidrv_plci *plcip;

 plcip = kzalloc(sizeof(capidrv_plci), GFP_ATOMIC);

 if (plcip == ((void*)0))
  return ((void*)0);

 plcip->state = ST_PLCI_NONE;
 plcip->plci = 0;
 plcip->msgid = 0;
 plcip->chan = chan;
 plcip->next = card->plci_list;
 card->plci_list = plcip;
 card->bchans[chan].plcip = plcip;

 return plcip;
}
