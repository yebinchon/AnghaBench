
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef int flag ;
typedef scalar_t__ bits32 ;


 int extractFloat32Sign (int) ;

__attribute__((used)) static inline flag float32_lt_nocheck(float32 a, float32 b)
{
 flag aSign, bSign;

 aSign = extractFloat32Sign(a);
 bSign = extractFloat32Sign(b);
 if (aSign != bSign)
  return aSign && ((bits32) ((a | b) << 1) != 0);
 return (a != b) && (aSign ^ (a < b));
}
