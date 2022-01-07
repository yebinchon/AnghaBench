
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {scalar_t__ base_addr; } ;


 int inw (scalar_t__) ;
 int jiffies ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int wait_timeout(struct net_device *dev, int regoffs, u16 mask,
   u16 value, int timeout)
{
 unsigned long fin = jiffies + timeout;

 while (time_before(jiffies,fin))
  if ((inw(dev->base_addr + regoffs) & mask) == value)
   return 1;

 return 0;
}
