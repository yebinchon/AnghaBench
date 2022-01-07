
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isolation; } ;
struct qeth_card {TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* ATTR_QETH_ISOLATION_DROP ;
 char* ATTR_QETH_ISOLATION_FWD ;
 char* ATTR_QETH_ISOLATION_NONE ;
 int EINVAL ;



 struct qeth_card* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t qeth_dev_isolation_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 if (!card)
  return -EINVAL;

 switch (card->options.isolation) {
 case 128:
  return snprintf(buf, 6, "%s\n", ATTR_QETH_ISOLATION_NONE);
 case 129:
  return snprintf(buf, 9, "%s\n", ATTR_QETH_ISOLATION_FWD);
 case 130:
  return snprintf(buf, 6, "%s\n", ATTR_QETH_ISOLATION_DROP);
 default:
  return snprintf(buf, 5, "%s\n", "N/A");
 }
}
