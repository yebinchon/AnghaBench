
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int HFA384X_INW (int ) ;

__attribute__((used)) static u16 hfa384x_read_reg(struct net_device *dev, u16 reg)
{
 return HFA384X_INW(reg);
}
