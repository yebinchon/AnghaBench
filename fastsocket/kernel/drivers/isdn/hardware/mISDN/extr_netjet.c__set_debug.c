
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* debug; } ;
struct TYPE_6__ {TYPE_1__ dch; } ;
struct tiger_hw {TYPE_4__* bc; TYPE_2__ isac; } ;
struct TYPE_7__ {void* debug; } ;
struct TYPE_8__ {TYPE_3__ bch; } ;


 void* debug ;

__attribute__((used)) static void
_set_debug(struct tiger_hw *card)
{
 card->isac.dch.debug = debug;
 card->bc[0].bch.debug = debug;
 card->bc[1].bch.debug = debug;
}
