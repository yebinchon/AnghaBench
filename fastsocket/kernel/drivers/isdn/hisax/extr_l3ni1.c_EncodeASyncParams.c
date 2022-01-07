
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static u_char *
EncodeASyncParams(u_char * p, u_char si2)
{

 p[0] = 0;
 p[1] = 0x40;
 p[2] = 0x80;
 if (si2 & 32)

  p[2] += 16;
 else

  p[2] += 24;

 if (si2 & 16)

  p[2] += 96;
 else

  p[2] += 32;

 if (si2 & 8)

  p[2] += 2;
 else

  p[2] += 3;

 switch (si2 & 0x07) {
  case 0:
   p[0] = 66;

   break;
  case 1:
   p[0] = 88;

   break;
  case 2:
   p[0] = 87;

   break;
  case 3:
   p[0] = 67;

   break;
  case 4:
   p[0] = 69;

   break;
  case 5:
   p[0] = 72;

   break;
  case 6:
   p[0] = 73;

   break;
  case 7:
   p[0] = 75;

   break;
 }
 return p + 3;
}
