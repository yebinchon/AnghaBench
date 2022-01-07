
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline s8 TEMP_TO_REG(int val)
{
 int nval = SENSORS_LIMIT(val, -54120, 157530) ;
 return nval<0 ? (nval-5212-415)/830 : (nval-5212+415)/830;
}
