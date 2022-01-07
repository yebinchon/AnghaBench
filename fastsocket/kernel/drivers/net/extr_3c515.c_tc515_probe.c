
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ENODEV ;
 struct net_device* ERR_PTR (int ) ;
 scalar_t__ corkscrew_debug ;
 struct net_device* corkscrew_scan (int) ;
 int pr_debug (char*,int ) ;
 int version ;

struct net_device *tc515_probe(int unit)
{
 struct net_device *dev = corkscrew_scan(unit);
 static int printed;

 if (!dev)
  return ERR_PTR(-ENODEV);

 if (corkscrew_debug > 0 && !printed) {
  printed = 1;
  pr_debug("%s", version);
 }

 return dev;
}
