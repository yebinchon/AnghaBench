
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 si2cip(u8 si1, u8 si2)
{
 static const u8 cip[17][5] =
 {

  {0, 0, 0, 0, 0},
  {16, 16, 4, 26, 16},
  {17, 17, 17, 4, 4},
  {2, 2, 2, 2, 2},
  {18, 18, 18, 18, 18},
  {2, 2, 2, 2, 2},
  {0, 0, 0, 0, 0},
  {2, 2, 2, 2, 2},
  {2, 2, 2, 2, 2},
  {21, 21, 21, 21, 21},
  {19, 19, 19, 19, 19},
  {0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0},
  {22, 22, 22, 22, 22},
  {27, 27, 27, 28, 27}
 };
 if (si1 > 16)
  si1 = 0;
 if (si2 > 4)
  si2 = 0;

 return (u16) cip[si1][si2];
}
