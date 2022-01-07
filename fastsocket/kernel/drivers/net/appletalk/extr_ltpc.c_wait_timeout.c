
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 int inb_p (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int wait_timeout(struct net_device *dev, int c)
{


 int i;



 for(i=0;i<200000;i++) {
  if ( c != inb_p(dev->base_addr+6) ) return 0;
  udelay(100);
 }
 return 1;
}
