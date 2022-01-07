
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ portname; scalar_t__ portname_required; } ;
struct qeth_card {TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBCASC (char*,int) ;
 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int memcpy (char*,scalar_t__,int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t qeth_dev_portname_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char portname[9] = {0, };

 if (!card)
  return -EINVAL;

 if (card->info.portname_required) {
  memcpy(portname, card->info.portname + 1, 8);
  EBCASC(portname, 8);
  return sprintf(buf, "%s\n", portname);
 } else
  return sprintf(buf, "no portname required\n");
}
