
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nbchan; TYPE_1__* bchans; } ;
typedef TYPE_2__ capidrv_contr ;
struct TYPE_4__ {scalar_t__ disconnecting; int * plcip; } ;



__attribute__((used)) static inline int new_bchan(capidrv_contr * card)
{
 int i;
 for (i = 0; i < card->nbchan; i++) {
  if (card->bchans[i].plcip == ((void*)0)) {
   card->bchans[i].disconnecting = 0;
   return i;
  }
 }
 return -1;
}
