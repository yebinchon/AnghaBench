
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ac97_return_record_select(int a_out)
{
 return (a_out & 0x700) >> 8;
}
