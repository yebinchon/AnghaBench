
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 int LM77_TEMP_MAX ;
 int LM77_TEMP_MIN ;
 int SENSORS_LIMIT (int,int ,int ) ;

__attribute__((used)) static inline s16 LM77_TEMP_TO_REG(int temp)
{
 int ntemp = SENSORS_LIMIT(temp, LM77_TEMP_MIN, LM77_TEMP_MAX);
 return (ntemp / 500) * 8;
}
