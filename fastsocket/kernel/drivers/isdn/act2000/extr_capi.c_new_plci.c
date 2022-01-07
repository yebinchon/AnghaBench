
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* bch; } ;
typedef TYPE_2__ act2000_card ;
typedef int __u16 ;
struct TYPE_4__ {int plci; } ;


 int ACT2000_BCH ;

__attribute__((used)) static int
new_plci(act2000_card *card, __u16 plci)
{
 int i;
 for (i = 0; i < ACT2000_BCH; i++)
  if (card->bch[i].plci == 0x8000) {
   card->bch[i].plci = plci;
   return i;
  }
 return -1;
}
