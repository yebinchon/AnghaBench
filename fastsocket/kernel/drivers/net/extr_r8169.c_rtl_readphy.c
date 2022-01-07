
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read ) (struct rtl8169_private*,int) ;} ;
struct rtl8169_private {TYPE_1__ mdio_ops; } ;


 int stub1 (struct rtl8169_private*,int) ;

__attribute__((used)) static int rtl_readphy(struct rtl8169_private *tp, int location)
{
 return tp->mdio_ops.read(tp, location);
}
