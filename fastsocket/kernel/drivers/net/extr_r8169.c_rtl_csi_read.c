
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* read ) (struct rtl8169_private*,int) ;} ;
struct rtl8169_private {TYPE_1__ csi_ops; } ;


 int stub1 (struct rtl8169_private*,int) ;

__attribute__((used)) static u32 rtl_csi_read(struct rtl8169_private *tp, int addr)
{
 return tp->csi_ops.read ? tp->csi_ops.read(tp, addr) : ~0;
}
