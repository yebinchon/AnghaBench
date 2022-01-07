
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct card_info {int unsafe; scalar_t__ nmodes; scalar_t__ (* probe ) () ;} ;


 scalar_t__ stub1 () ;
 struct card_info* video_cards ;
 struct card_info* video_cards_end ;

void probe_cards(int unsafe)
{
 struct card_info *card;
 static u8 probed[2];

 if (probed[unsafe])
  return;

 probed[unsafe] = 1;

 for (card = video_cards; card < video_cards_end; card++) {
  if (card->unsafe == unsafe) {
   if (card->probe)
    card->nmodes = card->probe();
   else
    card->nmodes = 0;
  }
 }
}
