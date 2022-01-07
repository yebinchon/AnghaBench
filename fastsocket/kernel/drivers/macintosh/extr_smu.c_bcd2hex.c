
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int bcd2hex (int n)
{
 return (((n & 0xf0) >> 4) * 10) + (n & 0xf);
}
