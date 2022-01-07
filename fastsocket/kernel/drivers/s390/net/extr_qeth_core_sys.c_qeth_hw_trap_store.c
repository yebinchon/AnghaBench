
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwtrap; } ;
struct qeth_card {scalar_t__ state; int conf_mutex; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ CARD_STATE_SOFTSETUP ;
 scalar_t__ CARD_STATE_UP ;
 int EINVAL ;
 int QETH_DIAGS_CMD_TRAP ;
 int QETH_DIAGS_TRAP_ARM ;
 int QETH_DIAGS_TRAP_CAPTURE ;
 int QETH_DIAGS_TRAP_DISARM ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_hw_trap (struct qeth_card*,int ) ;
 scalar_t__ qeth_is_diagass_supported (struct qeth_card*,int ) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t qeth_hw_trap_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 int rc = 0;
 char *tmp, *curtoken;
 int state = 0;
 curtoken = (char *)buf;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if (card->state == CARD_STATE_SOFTSETUP || card->state == CARD_STATE_UP)
  state = 1;
 tmp = strsep(&curtoken, "\n");

 if (!strcmp(tmp, "arm") && !card->info.hwtrap) {
  if (state) {
   if (qeth_is_diagass_supported(card,
       QETH_DIAGS_CMD_TRAP)) {
    rc = qeth_hw_trap(card, QETH_DIAGS_TRAP_ARM);
    if (!rc)
     card->info.hwtrap = 1;
   } else
    rc = -EINVAL;
  } else
   card->info.hwtrap = 1;
 } else if (!strcmp(tmp, "disarm") && card->info.hwtrap) {
  if (state) {
   rc = qeth_hw_trap(card, QETH_DIAGS_TRAP_DISARM);
   if (!rc)
    card->info.hwtrap = 0;
  } else
   card->info.hwtrap = 0;
 } else if (!strcmp(tmp, "trap") && state && card->info.hwtrap)
  rc = qeth_hw_trap(card, QETH_DIAGS_TRAP_CAPTURE);
 else
  rc = -EINVAL;

 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
