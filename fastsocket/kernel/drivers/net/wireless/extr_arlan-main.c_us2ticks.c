
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;

__attribute__((used)) static inline long us2ticks(int us)
{
 return us * (1000000 / HZ);
}
