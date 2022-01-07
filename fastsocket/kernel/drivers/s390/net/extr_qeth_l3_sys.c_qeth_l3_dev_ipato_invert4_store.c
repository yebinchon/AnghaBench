
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int invert4; } ;
struct qeth_card {int conf_mutex; TYPE_1__ ipato; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_ipato_invert4_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 tmp = strsep((char **) &buf, "\n");
 if (!strcmp(tmp, "toggle")) {
  card->ipato.invert4 = (card->ipato.invert4)? 0 : 1;
 } else if (!strcmp(tmp, "1")) {
  card->ipato.invert4 = 1;
 } else if (!strcmp(tmp, "0")) {
  card->ipato.invert4 = 0;
 } else
  rc = -EINVAL;
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
