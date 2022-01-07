
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2ePointer; } ;


 unsigned char SEL_OUTMAIL ;
 scalar_t__ inb (int) ;
 int outb (unsigned char,int) ;

__attribute__((used)) static int
iiTrySendMailII(i2eBordStrPtr pB, unsigned char mail)
{
 int port = pB->i2ePointer;

 outb(SEL_OUTMAIL, port);
 if (inb(port) == 0) {
  outb(SEL_OUTMAIL, port);
  outb(mail, port);
  return 1;
 }
 return 0;
}
