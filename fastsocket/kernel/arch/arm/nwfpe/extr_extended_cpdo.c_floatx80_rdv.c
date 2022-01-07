
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int floatx80 ;


 int floatx80_div (struct roundingData*,int ,int ) ;

__attribute__((used)) static floatx80 floatx80_rdv(struct roundingData *roundData, floatx80 rFn, floatx80 rFm)
{
 return floatx80_div(roundData, rFm, rFn);
}
