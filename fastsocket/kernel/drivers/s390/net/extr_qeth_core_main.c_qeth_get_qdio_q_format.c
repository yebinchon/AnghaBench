
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct qeth_card {TYPE_1__ info; } ;




__attribute__((used)) static inline int qeth_get_qdio_q_format(struct qeth_card *card)
{
 switch (card->info.type) {
 case 128:
  return 2;
 default:
  return 0;
 }
}
