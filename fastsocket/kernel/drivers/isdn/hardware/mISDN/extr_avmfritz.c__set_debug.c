
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* debug; } ;
struct TYPE_5__ {TYPE_1__ dch; } ;
struct fritzcard {TYPE_3__* bch; TYPE_2__ isac; } ;
struct TYPE_6__ {void* debug; } ;


 void* debug ;

__attribute__((used)) static void
_set_debug(struct fritzcard *card)
{
 card->isac.dch.debug = debug;
 card->bch[0].debug = debug;
 card->bch[1].debug = debug;
}
