
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devicename; } ;


 int ENOBUFS ;
 int ENODEV ;
 int ISDN_STAT_BCONN ;
 int IS_VALID_CARD (int) ;
 int hangup (int,unsigned long) ;
 int indicate_status (int,int ,unsigned long,int *) ;
 int pr_debug (char*,int,...) ;
 TYPE_1__** sc_adapter ;
 scalar_t__ setup_buffers (int,unsigned long) ;

__attribute__((used)) static int answer(int card, unsigned long channel)
{
 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }

 if(setup_buffers(card, channel+1)) {
  hangup(card, channel+1);
  return -ENOBUFS;
 }

 indicate_status(card, ISDN_STAT_BCONN,channel,((void*)0));
 pr_debug("%s: Answered incoming call on channel %lu\n",
  sc_adapter[card]->devicename, channel+1);
 return 0;
}
