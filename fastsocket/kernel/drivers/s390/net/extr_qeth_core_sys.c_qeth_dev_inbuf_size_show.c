
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 char* qeth_get_bufsize_str (struct qeth_card*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t qeth_dev_inbuf_size_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 if (!card)
  return -EINVAL;

 return sprintf(buf, "%s\n", qeth_get_bufsize_str(card));
}
