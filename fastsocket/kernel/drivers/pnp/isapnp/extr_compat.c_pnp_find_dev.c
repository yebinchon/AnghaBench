
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct list_head* next; } ;
struct TYPE_3__ {struct list_head* next; } ;
struct pnp_dev {int id; struct pnp_card* card; TYPE_2__ card_list; TYPE_1__ global_list; } ;
struct list_head {struct list_head* next; } ;
struct pnp_card {struct list_head devices; } ;


 unsigned short ISAPNP_ANY_ID ;
 struct pnp_dev* card_to_pnp_dev (struct list_head*) ;
 scalar_t__ compare_pnp_id (int ,char*) ;
 struct pnp_dev* global_to_pnp_dev (struct list_head*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int pnp_convert_id (char*,unsigned short,unsigned short) ;
 struct list_head pnp_global ;

struct pnp_dev *pnp_find_dev(struct pnp_card *card, unsigned short vendor,
        unsigned short function, struct pnp_dev *from)
{
 char id[8];
 char any[8];

 pnp_convert_id(id, vendor, function);
 pnp_convert_id(any, ISAPNP_ANY_ID, ISAPNP_ANY_ID);
 if (card == ((void*)0)) {
  struct list_head *list;

  list = pnp_global.next;
  if (from)
   list = from->global_list.next;

  while (list != &pnp_global) {
   struct pnp_dev *dev = global_to_pnp_dev(list);

   if (compare_pnp_id(dev->id, id) ||
       (memcmp(id, any, 7) == 0))
    return dev;
   list = list->next;
  }
 } else {
  struct list_head *list;

  list = card->devices.next;
  if (from) {
   list = from->card_list.next;
   if (from->card != card)
    return ((void*)0);
  }
  while (list != &card->devices) {
   struct pnp_dev *dev = card_to_pnp_dev(list);

   if (compare_pnp_id(dev->id, id))
    return dev;
   list = list->next;
  }
 }
 return ((void*)0);
}
