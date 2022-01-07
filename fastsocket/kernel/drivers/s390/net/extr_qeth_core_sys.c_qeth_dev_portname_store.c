
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* portname; } ;
struct qeth_card {scalar_t__ state; int conf_mutex; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ASCEBC (char*,int) ;
 scalar_t__ CARD_STATE_DOWN ;
 scalar_t__ CARD_STATE_RECOVER ;
 int EINVAL ;
 int EPERM ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t qeth_dev_portname_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int i, rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if ((card->state != CARD_STATE_DOWN) &&
     (card->state != CARD_STATE_RECOVER)) {
  rc = -EPERM;
  goto out;
 }

 tmp = strsep((char **) &buf, "\n");
 if ((strlen(tmp) > 8) || (strlen(tmp) == 0)) {
  rc = -EINVAL;
  goto out;
 }

 card->info.portname[0] = strlen(tmp);

 for (i = 1; i < 9; i++)
  card->info.portname[i] = ' ';
 strcpy(card->info.portname + 1, tmp);
 ASCEBC(card->info.portname + 1, 8);
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
