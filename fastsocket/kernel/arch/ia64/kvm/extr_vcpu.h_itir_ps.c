
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long itir_ps(unsigned long itir)
{
 return ((itir >> 2) & 0x3f);
}
