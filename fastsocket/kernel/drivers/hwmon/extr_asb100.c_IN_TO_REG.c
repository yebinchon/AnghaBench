
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 int ASB100_IN_MAX ;
 int ASB100_IN_MIN ;
 unsigned int SENSORS_LIMIT (unsigned int,int ,int ) ;

__attribute__((used)) static u8 IN_TO_REG(unsigned val)
{
 unsigned nval = SENSORS_LIMIT(val, ASB100_IN_MIN, ASB100_IN_MAX);
 return (nval + 8) / 16;
}
