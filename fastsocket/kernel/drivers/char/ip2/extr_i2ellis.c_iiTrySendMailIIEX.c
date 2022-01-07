
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2eXMail; int i2eStatus; } ;


 int STE_OUT_MAIL ;
 int inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static int
iiTrySendMailIIEX(i2eBordStrPtr pB, unsigned char mail)
{
 if (inb(pB->i2eStatus) & STE_OUT_MAIL)
  return 0;
 outb(mail, pB->i2eXMail);
 return 1;
}
