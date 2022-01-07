
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* ccwgdriver; } ;
struct qeth_card {TYPE_1__* gdev; TYPE_2__ discipline; } ;
typedef enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;


 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l2_ccwgroup_driver ;
 int qeth_l3_ccwgroup_driver ;
 int qeth_mod_mutex ;
 int symbol_get (int ) ;
 void* try_then_request_module (int ,char*) ;

int qeth_core_load_discipline(struct qeth_card *card,
  enum qeth_discipline_id discipline)
{
 int rc = 0;
 mutex_lock(&qeth_mod_mutex);
 switch (discipline) {
 case 128:
  card->discipline.ccwgdriver = try_then_request_module(
   symbol_get(qeth_l3_ccwgroup_driver),
   "qeth_l3");
  break;
 case 129:
  card->discipline.ccwgdriver = try_then_request_module(
   symbol_get(qeth_l2_ccwgroup_driver),
   "qeth_l2");
  break;
 }
 if (!card->discipline.ccwgdriver) {
  dev_err(&card->gdev->dev, "There is no kernel module to "
   "support discipline %d\n", discipline);
  rc = -EINVAL;
 }
 mutex_unlock(&qeth_mod_mutex);
 return rc;
}
