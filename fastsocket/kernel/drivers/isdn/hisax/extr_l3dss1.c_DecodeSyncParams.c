
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static u_char
DecodeSyncParams(u_char si2, u_char info)
{
 info &= 0x7f;
 switch (info) {
  case 40:

   return si2 + 15;
  case 15:

   return si2 + 9;
  case 14:

   return si2 + 8;
  case 11:

   return si2 + 7;
  case 9:

   return si2 + 6;
  case 8:

   return si2 + 5;
  case 5:

   return si2 + 4;
  case 3:

   return si2 + 3;
  case 23:

   return si2 + 2;
  case 24:

   return si2 + 1;
  default:

   return si2;
 }
}
