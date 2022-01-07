
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* omsg; } ;
typedef TYPE_1__ isdnloop_card ;


 int isdnloop_fake (TYPE_1__*,char*,int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
isdnloop_fake_err(isdnloop_card * card)
{
 char buf[60];

 sprintf(buf, "E%s", card->omsg);
 isdnloop_fake(card, buf, -1);
 isdnloop_fake(card, "NAK", -1);
}
