
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int close_enough(long rate1, long rate2)
{
 return rate1 && !((rate2 - rate1) * 1000 / rate1);
}
