
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SENSORS_LIMIT (int,int ,int) ;

__attribute__((used)) static inline int TEMP_HYST_TO_REG(int val, int ix, int reg)
{
 int hyst = SENSORS_LIMIT((val + 500) / 1000, 0, 15);

 return (ix == 1) ? (reg & 0xf0) | hyst : (reg & 0x0f) | (hyst << 4);
}
