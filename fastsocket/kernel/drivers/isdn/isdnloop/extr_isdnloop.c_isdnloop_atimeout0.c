
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isdnloop_card ;


 int isdnloop_atimeout (int *,int ) ;

__attribute__((used)) static void
isdnloop_atimeout0(unsigned long data)
{
 isdnloop_card *card = (isdnloop_card *) data;
 isdnloop_atimeout(card, 0);
}
