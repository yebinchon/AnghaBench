
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2eData; } ;


 int outb (char,int ) ;

__attribute__((used)) static void
iiWriteWord8(i2eBordStrPtr pB, unsigned short value)
{
 outb((char)value, pB->i2eData);
 outb((char)(value >> 8), pB->i2eData);
}
