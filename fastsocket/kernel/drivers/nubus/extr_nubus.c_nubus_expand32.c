
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline long nubus_expand32(long foo)
{
 if(foo & 0x00800000)
  foo |= 0xFF000000;
 return foo;
}
