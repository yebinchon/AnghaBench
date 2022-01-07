
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (int,int ,int) ;

__attribute__((used)) static u8 encode_temp(u8 twos_complement, int cooked)
{
 u8 ret = twos_complement ? cooked & 0xFF : cooked + 64;
 return SENSORS_LIMIT(ret, 0, 255);
}
