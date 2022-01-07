
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SENSORS_LIMIT (int,int ,int) ;

__attribute__((used)) static inline int IN_TO_REG(int val, int nominal)
{
 return SENSORS_LIMIT((val * 192 + nominal / 2) / nominal, 0, 255);
}
