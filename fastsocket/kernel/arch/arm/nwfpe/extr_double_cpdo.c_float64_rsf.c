
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int float64 ;


 int float64_sub (struct roundingData*,int ,int ) ;

__attribute__((used)) static float64 float64_rsf(struct roundingData *roundData, float64 rFn, float64 rFm)
{
 return float64_sub(roundData, rFm, rFn);
}
