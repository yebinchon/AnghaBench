
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static u_char
EncodeSyncParams(u_char si2, u_char ai)
{

 switch (si2) {
  case 0:
   return ai + 2;

  case 1:
   return ai + 24;

  case 2:
   return ai + 23;

  case 3:
   return ai + 3;

  case 4:
   return ai + 5;

  case 5:
   return ai + 8;

  case 6:
   return ai + 9;

  case 7:
   return ai + 11;

  case 8:
   return ai + 14;

  case 9:
   return ai + 15;

  case 15:
   return ai + 40;

  default:
   break;
 }
 return ai;
}
