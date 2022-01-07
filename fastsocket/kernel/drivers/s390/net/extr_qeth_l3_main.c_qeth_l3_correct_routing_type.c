
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct qeth_card {TYPE_1__ info; } ;
typedef enum qeth_routing_types { ____Placeholder_qeth_routing_types } qeth_routing_types ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int IPA_OSA_MC_ROUTER ;




 scalar_t__ QETH_CARD_TYPE_IQD ;


 int qeth_is_ipafunc_supported (struct qeth_card*,int,int ) ;

__attribute__((used)) static void qeth_l3_correct_routing_type(struct qeth_card *card,
  enum qeth_routing_types *type, enum qeth_prot_versions prot)
{
 if (card->info.type == QETH_CARD_TYPE_IQD) {
  switch (*type) {
  case 132:
  case 131:
  case 129:
  case 133:
   return;
  default:
   goto out_inval;
  }
 } else {
  switch (*type) {
  case 132:
  case 130:
  case 128:
   return;
  case 133:
   if (qeth_is_ipafunc_supported(card, prot,
            IPA_OSA_MC_ROUTER))
    return;
  default:
   goto out_inval;
  }
 }
out_inval:
 *type = 132;
}
