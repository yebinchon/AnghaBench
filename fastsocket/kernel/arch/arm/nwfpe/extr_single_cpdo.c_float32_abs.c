
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int float32 ;



__attribute__((used)) static float32 float32_abs(struct roundingData *roundData, float32 rFm)
{
 return rFm & 0x7fffffff;
}
