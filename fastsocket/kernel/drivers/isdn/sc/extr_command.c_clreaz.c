
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int devicename; TYPE_1__* channel; } ;
struct TYPE_3__ {int eazclear; int eazlist; } ;


 int ENODEV ;
 int IS_VALID_CARD (int) ;
 int pr_debug (char*,int,...) ;
 TYPE_2__** sc_adapter ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int clreaz(int card, unsigned long arg)
{
 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }

 strcpy(sc_adapter[card]->channel[arg].eazlist, "");
 sc_adapter[card]->channel[arg].eazclear = 1;
 pr_debug("%s: EAZ List cleared for channel %lu\n",
  sc_adapter[card]->devicename, arg+1);
 return 0;
}
