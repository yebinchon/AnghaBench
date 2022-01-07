
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2eXMask; } ;


 int MX_IN_MAIL ;
 int outb (int ,int ) ;

__attribute__((used)) static void
iiEnableMailIrqIIEX(i2eBordStrPtr pB)
{
 outb(MX_IN_MAIL, pB->i2eXMask);
}
