
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SCALE (unsigned long,int,int) ;
 int SENSORS_LIMIT (int ,int ,int) ;

__attribute__((used)) static inline u8 AOUT_TO_REG(unsigned long val)
{
 return SENSORS_LIMIT(SCALE(val, 255, 1250), 0, 255);
}
