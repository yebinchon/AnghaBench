
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2eStatus; } ;


 int STE_OUT_MAIL ;
 int inb (int ) ;

__attribute__((used)) static int
iiTxMailEmptyIIEX(i2eBordStrPtr pB)
{
 return !(inb(pB->i2eStatus) & STE_OUT_MAIL);
}
