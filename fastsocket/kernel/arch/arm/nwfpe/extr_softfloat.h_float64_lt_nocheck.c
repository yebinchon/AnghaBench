
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int flag ;
typedef scalar_t__ bits64 ;


 int extractFloat64Sign (int) ;

__attribute__((used)) static inline flag float64_lt_nocheck(float64 a, float64 b)
{
 flag aSign, bSign;

 aSign = extractFloat64Sign(a);
 bSign = extractFloat64Sign(b);
 if (aSign != bSign)
  return aSign && ((bits64) ((a | b) << 1) != 0);
 return (a != b) && (aSign ^ (a < b));
}
