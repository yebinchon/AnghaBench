
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* write ) (struct rtl8169_private*,int,int) ;} ;
struct rtl8169_private {TYPE_1__ csi_ops; } ;


 int stub1 (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl_csi_write(struct rtl8169_private *tp, int addr, int value)
{
 if (tp->csi_ops.write)
  tp->csi_ops.write(tp, addr, value);
}
