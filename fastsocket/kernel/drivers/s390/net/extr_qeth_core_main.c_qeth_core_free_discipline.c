
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ccwgdriver; } ;
struct TYPE_3__ {scalar_t__ layer2; } ;
struct qeth_card {TYPE_2__ discipline; TYPE_1__ options; } ;


 int qeth_l2_ccwgroup_driver ;
 int qeth_l3_ccwgroup_driver ;
 int symbol_put (int ) ;

void qeth_core_free_discipline(struct qeth_card *card)
{
 if (card->options.layer2)
  symbol_put(qeth_l2_ccwgroup_driver);
 else
  symbol_put(qeth_l3_ccwgroup_driver);
 card->discipline.ccwgdriver = ((void*)0);
}
