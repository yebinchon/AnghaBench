
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SENSORS_LIMIT (int,int ,int) ;

__attribute__((used)) static inline int FAN_TO_REG(int val, int tpc)
{
 if (tpc) {
  return SENSORS_LIMIT(val / tpc, 0, 0xffff);
 } else {
  return (val <= 0) ? 0xffff :
   SENSORS_LIMIT(90000 * 60 / val, 0, 0xfffe);
 }
}
