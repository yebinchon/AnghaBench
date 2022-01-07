
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int checksum_type; } ;
struct qeth_card {scalar_t__ state; int conf_mutex; TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ CARD_STATE_DOWN ;
 scalar_t__ CARD_STATE_RECOVER ;
 int EINVAL ;
 int EPERM ;
 int HW_CHECKSUMMING ;
 int NO_CHECKSUMMING ;
 int SW_CHECKSUMMING ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_checksum_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if ((card->state != CARD_STATE_DOWN) &&
     (card->state != CARD_STATE_RECOVER)) {
  rc = -EPERM;
  goto out;
 }

 tmp = strsep((char **) &buf, "\n");
 if (!strcmp(tmp, "sw_checksumming"))
  card->options.checksum_type = SW_CHECKSUMMING;
 else if (!strcmp(tmp, "hw_checksumming"))
  card->options.checksum_type = HW_CHECKSUMMING;
 else if (!strcmp(tmp, "no_checksumming"))
  card->options.checksum_type = NO_CHECKSUMMING;
 else
  rc = -EINVAL;
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
