
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int QETH_PROT_IPV6 ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_l3_dev_rxip_add_store (char const*,size_t,struct qeth_card*,int ) ;

__attribute__((used)) static ssize_t qeth_l3_dev_rxip_add6_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 if (!card)
  return -EINVAL;

 return qeth_l3_dev_rxip_add_store(buf, count, card, QETH_PROT_IPV6);
}
