
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;


 int TSO_FLAGS ;

__attribute__((used)) static int set_tso(struct net_device *dev, u32 value)
{
 if (value)
  dev->features |= TSO_FLAGS;
 else
  dev->features &= ~TSO_FLAGS;
 return 0;
}
