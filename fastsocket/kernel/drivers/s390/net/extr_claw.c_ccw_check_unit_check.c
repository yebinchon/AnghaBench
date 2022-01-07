
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct device {int dummy; } ;
struct chbk {TYPE_1__* cdev; struct net_device* ndev; } ;
struct TYPE_2__ {struct device dev; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int dev_warn (struct device*,char*,int ) ;
 int trace ;

__attribute__((used)) static void
ccw_check_unit_check(struct chbk * p_ch, unsigned char sense )
{
 struct net_device *ndev = p_ch->ndev;
 struct device *dev = &p_ch->cdev->dev;

 CLAW_DBF_TEXT(4, trace, "unitchek");
 dev_warn(dev, "The communication peer of %s disconnected\n",
  ndev->name);

 if (sense & 0x40) {
  if (sense & 0x01) {
   dev_warn(dev, "The remote channel adapter for"
    " %s has been reset\n",
    ndev->name);
  }
 } else if (sense & 0x20) {
  if (sense & 0x04) {
   dev_warn(dev, "A data streaming timeout occurred"
    " for %s\n",
    ndev->name);
  } else if (sense & 0x10) {
   dev_warn(dev, "The remote channel adapter for %s"
    " is faulty\n",
    ndev->name);
  } else {
   dev_warn(dev, "A data transfer parity error occurred"
    " for %s\n",
    ndev->name);
  }
 } else if (sense & 0x10) {
  dev_warn(dev, "A read data parity error occurred"
   " for %s\n",
   ndev->name);
 }

}
