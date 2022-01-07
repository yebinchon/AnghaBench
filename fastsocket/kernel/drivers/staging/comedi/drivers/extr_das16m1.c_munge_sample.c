
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline short munge_sample(short data)
{
 return (data >> 4) & 0xfff;
}
