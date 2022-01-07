
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {int i2eXMail; } ;


 scalar_t__ I2_HAS_MAIL (TYPE_1__*) ;
 unsigned short NO_MAIL_HERE ;
 unsigned short inb (int ) ;

__attribute__((used)) static unsigned short
iiGetMailIIEX(i2eBordStrPtr pB)
{
 if (I2_HAS_MAIL(pB))
  return inb(pB->i2eXMail);
 else
  return NO_MAIL_HERE;
}
