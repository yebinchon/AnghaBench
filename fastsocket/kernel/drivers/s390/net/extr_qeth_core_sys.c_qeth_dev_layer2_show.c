
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int layer2; } ;
struct qeth_card {TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t qeth_dev_layer2_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 if (!card)
  return -EINVAL;

 return sprintf(buf, "%i\n", card->options.layer2);
}
