
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* write ) (struct rtl8169_private*,int,int ) ;} ;
struct rtl8169_private {TYPE_1__ mdio_ops; } ;


 int stub1 (struct rtl8169_private*,int,int ) ;

__attribute__((used)) static void rtl_writephy(struct rtl8169_private *tp, int location, u32 val)
{
 tp->mdio_ops.write(tp, location, val);
}
