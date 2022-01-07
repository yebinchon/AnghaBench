
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int IN_FROM_REG(int reg, int nominal, int res)
{
 return (reg * nominal + (3 << (res - 3))) / (3 << (res - 2));
}
