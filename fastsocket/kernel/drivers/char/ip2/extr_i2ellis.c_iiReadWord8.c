
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2eData; } ;


 int inb (int ) ;

__attribute__((used)) static unsigned short
iiReadWord8(i2eBordStrPtr pB)
{
 unsigned short urs;

 urs = inb(pB->i2eData);

 return (inb(pB->i2eData) << 8) | urs;
}
