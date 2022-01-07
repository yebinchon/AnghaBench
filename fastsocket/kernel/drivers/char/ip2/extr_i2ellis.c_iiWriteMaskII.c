
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2ePointer; } ;


 unsigned char SEL_MASK ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void
iiWriteMaskII(i2eBordStrPtr pB, unsigned char value)
{
 outb(SEL_MASK, pB->i2ePointer);
 outb(value, pB->i2ePointer);
}
