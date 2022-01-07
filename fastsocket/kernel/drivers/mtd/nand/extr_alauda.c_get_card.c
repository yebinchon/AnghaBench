
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct alauda_card {scalar_t__ id; } ;


 struct alauda_card* alauda_card_ids ;

__attribute__((used)) static struct alauda_card *get_card(u8 id)
{
 struct alauda_card *card;

 for (card = alauda_card_ids; card->id; card++)
  if (card->id == id)
   return card;
 return ((void*)0);
}
