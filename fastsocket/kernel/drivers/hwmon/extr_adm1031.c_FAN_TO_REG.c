
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAN_FROM_REG (int ,int) ;
 int SENSORS_LIMIT (int,int ,int) ;

__attribute__((used)) static int FAN_TO_REG(int reg, int div)
{
 int tmp;
 tmp = FAN_FROM_REG(SENSORS_LIMIT(reg, 0, 65535), div);
 return tmp > 255 ? 255 : tmp;
}
