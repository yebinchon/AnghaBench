
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int rtl_tbi_ioctl(struct rtl8169_private *tp, struct mii_ioctl_data *data, int cmd)
{
 return -EOPNOTSUPP;
}
