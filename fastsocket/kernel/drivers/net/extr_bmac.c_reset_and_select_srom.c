
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int DelayValue ;
 int SROMCSR ;
 int bmac_clock_in_bit (struct net_device*,int) ;
 int bmwrite (struct net_device*,int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void
reset_and_select_srom(struct net_device *dev)
{

 bmwrite(dev, SROMCSR, 0);
 udelay(DelayValue);


 bmac_clock_in_bit(dev, 1);
 bmac_clock_in_bit(dev, 1);
 bmac_clock_in_bit(dev, 0);
}
