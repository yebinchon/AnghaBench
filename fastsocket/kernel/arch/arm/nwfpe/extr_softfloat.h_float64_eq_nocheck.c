
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int flag ;
typedef scalar_t__ bits64 ;



__attribute__((used)) static inline flag float64_eq_nocheck(float64 a, float64 b)
{
 return (a == b) || ((bits64) ((a | b) << 1) == 0);
}
