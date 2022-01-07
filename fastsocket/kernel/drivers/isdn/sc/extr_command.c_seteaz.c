
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* channel; int devicename; } ;
struct TYPE_3__ {int eazlist; scalar_t__ eazclear; } ;


 int ENODEV ;
 int IS_VALID_CARD (int) ;
 int pr_debug (char*,int,...) ;
 TYPE_2__** sc_adapter ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int seteaz(int card, unsigned long arg, char *num)
{
 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }

 strcpy(sc_adapter[card]->channel[arg].eazlist, num);
 sc_adapter[card]->channel[arg].eazclear = 0;
 pr_debug("%s: EAZ list for channel %lu set to: %s\n",
  sc_adapter[card]->devicename, arg+1,
  sc_adapter[card]->channel[arg].eazlist);
 return 0;
}
