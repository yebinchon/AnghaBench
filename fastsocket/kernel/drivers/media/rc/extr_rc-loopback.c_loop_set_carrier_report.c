
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {int carrierreport; } ;


 int dprintk (char*,char*) ;

__attribute__((used)) static int loop_set_carrier_report(struct rc_dev *dev, int enable)
{
 struct loopback_dev *lodev = dev->priv;

 if (lodev->carrierreport != enable) {
  dprintk("%sabling carrier reports\n", enable ? "en" : "dis");
  lodev->carrierreport = !!enable;
 }

 return 0;
}
