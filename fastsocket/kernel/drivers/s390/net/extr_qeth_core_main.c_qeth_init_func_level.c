
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int func_level; } ;
struct TYPE_3__ {int enabled; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__ ipato; } ;





 int QETH_IDX_FUNC_LEVEL_IQD_DIS_IPAT ;
 int QETH_IDX_FUNC_LEVEL_IQD_ENA_IPAT ;
 int QETH_IDX_FUNC_LEVEL_OSD ;

__attribute__((used)) static void qeth_init_func_level(struct qeth_card *card)
{
 switch (card->info.type) {
 case 130:
  if (card->ipato.enabled)
   card->info.func_level =
    QETH_IDX_FUNC_LEVEL_IQD_ENA_IPAT;
  else
   card->info.func_level =
    QETH_IDX_FUNC_LEVEL_IQD_DIS_IPAT;
  break;
 case 129:
 case 128:
  card->info.func_level = QETH_IDX_FUNC_LEVEL_OSD;
  break;
 default:
  break;
 }
}
