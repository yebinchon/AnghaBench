
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_clock () ;

__attribute__((used)) static inline int qeth_get_micros(void)
{
 return (int) (get_clock() >> 12);
}
