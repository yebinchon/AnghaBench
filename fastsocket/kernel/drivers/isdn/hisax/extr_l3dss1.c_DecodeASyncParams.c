
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static u_char
DecodeASyncParams(u_char si2, u_char * p)
{
 u_char info;

 switch (p[5]) {
  case 66:

   break;

  case 88:

   si2 += 1;
   break;
  case 87:

   si2 += 2;
   break;
  case 67:

   si2 += 3;
   break;
  case 69:

   si2 += 4;
   break;
  case 72:

   si2 += 5;
   break;
  case 73:

   si2 += 6;
   break;
  case 75:

   si2 += 7;
   break;
 }

 info = p[7] & 0x7f;
 if ((info & 16) && (!(info & 8)))

  si2 += 32;

 if ((info & 96) == 96)

  si2 += 16;

 if ((info & 2) && (!(info & 1)))

  si2 += 8;

 return si2;
}
