
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mode_info {scalar_t__ mode; } ;
struct card_info {int nmodes; struct mode_info* modes; } ;


 struct card_info* video_cards ;
 struct card_info* video_cards_end ;

int mode_defined(u16 mode)
{
 struct card_info *card;
 struct mode_info *mi;
 int i;

 for (card = video_cards; card < video_cards_end; card++) {
  mi = card->modes;
  for (i = 0; i < card->nmodes; i++, mi++) {
   if (mi->mode == mode)
    return 1;
  }
 }

 return 0;
}
