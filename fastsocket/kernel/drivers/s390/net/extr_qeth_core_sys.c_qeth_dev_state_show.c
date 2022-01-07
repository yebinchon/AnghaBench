
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int state; int lan_online; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;







 int EINVAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t qeth_dev_state_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 if (!card)
  return -EINVAL;

 switch (card->state) {
 case 132:
  return sprintf(buf, "DOWN\n");
 case 131:
  return sprintf(buf, "HARDSETUP\n");
 case 129:
  return sprintf(buf, "SOFTSETUP\n");
 case 128:
  if (card->lan_online)
  return sprintf(buf, "UP (LAN ONLINE)\n");
  else
   return sprintf(buf, "UP (LAN OFFLINE)\n");
 case 130:
  return sprintf(buf, "RECOVER\n");
 default:
  return sprintf(buf, "UNKNOWN\n");
 }
}
