
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chpid; } ;
struct qeth_card {TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t qeth_dev_chpid_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 if (!card)
  return -EINVAL;

 return sprintf(buf, "%02X\n", card->info.chpid);
}
