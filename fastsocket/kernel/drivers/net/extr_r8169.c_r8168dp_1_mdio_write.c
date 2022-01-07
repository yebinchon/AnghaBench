
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int OCPDR_DATA_MASK ;
 int OCPDR_WRITE_CMD ;
 int r8168dp_1_mdio_access (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void r8168dp_1_mdio_write(struct rtl8169_private *tp, int reg, int value)
{
 r8168dp_1_mdio_access(tp, reg,
         OCPDR_WRITE_CMD | (value & OCPDR_DATA_MASK));
}
