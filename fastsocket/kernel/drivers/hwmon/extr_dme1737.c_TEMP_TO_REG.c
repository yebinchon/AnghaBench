
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline int TEMP_TO_REG(int val)
{
 return SENSORS_LIMIT((val < 0 ? val - 500 : val + 500) / 1000,
        -128, 127);
}
