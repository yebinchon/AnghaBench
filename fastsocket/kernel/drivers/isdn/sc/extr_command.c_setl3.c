
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {int l3_proto; } ;


 int ENODEV ;
 int IS_VALID_CARD (int) ;
 int pr_debug (char*,int) ;
 TYPE_2__** sc_adapter ;

__attribute__((used)) static int setl3(int card, unsigned long channel)
{
 int protocol = channel >> 8;

 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }

 sc_adapter[card]->channel[channel].l3_proto = protocol;
 return 0;
}
