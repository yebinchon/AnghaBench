
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ASB100_TEMP_MAX ;
 int ASB100_TEMP_MIN ;
 int SENSORS_LIMIT (long,int ,int ) ;

__attribute__((used)) static u8 TEMP_TO_REG(long temp)
{
 int ntemp = SENSORS_LIMIT(temp, ASB100_TEMP_MIN, ASB100_TEMP_MAX);
 ntemp += (ntemp<0 ? -500 : 500);
 return (u8)(ntemp / 1000);
}
