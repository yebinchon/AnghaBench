
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int float64 ;


 int float64_div (struct roundingData*,int ,int ) ;

__attribute__((used)) static float64 float64_rdv(struct roundingData *roundData, float64 rFn, float64 rFm)
{
 return float64_div(roundData, rFm, rFn);
}
