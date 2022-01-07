
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct fw_card *fw_card_get(struct fw_card *card)
{
 kref_get(&card->kref);

 return card;
}
