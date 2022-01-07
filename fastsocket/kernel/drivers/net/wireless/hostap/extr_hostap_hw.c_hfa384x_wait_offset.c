
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int HFA384X_BAP_BUSY_TIMEOUT ;
 int HFA384X_INW (int ) ;
 int HFA384X_OFFSET_BUSY ;
 int udelay (int) ;

__attribute__((used)) static int hfa384x_wait_offset(struct net_device *dev, u16 o_off)
{
 int tries = HFA384X_BAP_BUSY_TIMEOUT;
 int res = HFA384X_INW(o_off) & HFA384X_OFFSET_BUSY;

 while (res && tries > 0) {
  tries--;
  udelay(1);
  res = HFA384X_INW(o_off) & HFA384X_OFFSET_BUSY;
 }
 return res;
}
