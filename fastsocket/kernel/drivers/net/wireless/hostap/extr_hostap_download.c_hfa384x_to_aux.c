
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct net_device {int dummy; } ;
typedef int __le16 ;


 int HFA384X_AUXDATA_OFF ;
 int HFA384X_AUXOFFSET_OFF ;
 int HFA384X_AUXPAGE_OFF ;
 int HFA384X_OUTSW (int ,void*,int) ;
 int HFA384X_OUTW (unsigned int,int ) ;
 int HFA384X_OUTW_DATA (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int hfa384x_to_aux(struct net_device *dev, unsigned int addr, int len,
     void *buf)
{
 u16 page, offset;
 if (addr & 1 || len & 1)
  return -1;

 page = addr >> 7;
 offset = addr & 0x7f;

 HFA384X_OUTW(page, HFA384X_AUXPAGE_OFF);
 HFA384X_OUTW(offset, HFA384X_AUXOFFSET_OFF);

 udelay(5);
 HFA384X_OUTSW(HFA384X_AUXDATA_OFF, buf, len / 2);


 return 0;
}
