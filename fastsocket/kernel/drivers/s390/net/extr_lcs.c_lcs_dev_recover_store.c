
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {scalar_t__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ DEV_STATE_UP ;
 size_t EINVAL ;
 size_t EPERM ;
 struct lcs_card* dev_get_drvdata (struct device*) ;
 int lcs_schedule_recovery (struct lcs_card*) ;
 int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t
lcs_dev_recover_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct lcs_card *card = dev_get_drvdata(dev);
 char *tmp;
 int i;

 if (!card)
  return -EINVAL;
 if (card->state != DEV_STATE_UP)
  return -EPERM;
 i = simple_strtoul(buf, &tmp, 16);
 if (i == 1)
  lcs_schedule_recovery(card);
 return count;
}
