
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int large_send; } ;
struct qeth_card {int conf_mutex; TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum qeth_large_send_types { ____Placeholder_qeth_large_send_types } qeth_large_send_types ;


 int EINVAL ;
 int QETH_LARGE_SEND_NO ;
 int QETH_LARGE_SEND_TSO ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l3_set_large_send (struct qeth_card*,int) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_large_send_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 enum qeth_large_send_types type;
 int rc = 0;
 char *tmp;

 if (!card)
  return -EINVAL;
 tmp = strsep((char **) &buf, "\n");
 if (!strcmp(tmp, "no"))
  type = QETH_LARGE_SEND_NO;
 else if (!strcmp(tmp, "TSO"))
  type = QETH_LARGE_SEND_TSO;
 else
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if (card->options.large_send != type)
  rc = qeth_l3_set_large_send(card, type);
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
