
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {int idle; } ;


 int dprintk (char*,char*) ;

__attribute__((used)) static void loop_set_idle(struct rc_dev *dev, bool enable)
{
 struct loopback_dev *lodev = dev->priv;

 if (lodev->idle != enable) {
  dprintk("%sing idle mode\n", enable ? "enter" : "exit");
  lodev->idle = enable;
 }
}
