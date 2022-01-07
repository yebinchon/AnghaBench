
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2ePointer; } ;


 int SEL_OUTMAIL ;
 scalar_t__ inb (int) ;
 int outb (int ,int) ;

__attribute__((used)) static int
iiTxMailEmptyII(i2eBordStrPtr pB)
{
 int port = pB->i2ePointer;
 outb(SEL_OUTMAIL, port);
 return inb(port) == 0;
}
