
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2eData; } ;


 unsigned short inw (int ) ;

__attribute__((used)) static unsigned short
iiReadWord16(i2eBordStrPtr pB)
{
 return inw(pB->i2eData);
}
