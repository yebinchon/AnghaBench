
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int QETH_PROT_IPV4 ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_l3_dev_ipato_add_show (char*,struct qeth_card*,int ) ;

__attribute__((used)) static ssize_t qeth_l3_dev_ipato_add4_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 if (!card)
  return -EINVAL;

 return qeth_l3_dev_ipato_add_show(buf, card, QETH_PROT_IPV4);
}
