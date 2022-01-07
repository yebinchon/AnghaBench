
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptype; } ;
typedef TYPE_1__ isdnloop_card ;




 int* ctable_1t ;
 int * ctable_eu ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static char *
isdnloop_unicause(isdnloop_card * card, int loc, int cau)
{
 static char buf[6];

 switch (card->ptype) {
  case 128:
   sprintf(buf, "E%02X%02X", (loc) ? 4 : 2, ctable_eu[cau]);
   break;
  case 129:
   sprintf(buf, "%02X44", ctable_1t[cau]);
   break;
  default:
   return ("0000");
 }
 return (buf);
}
