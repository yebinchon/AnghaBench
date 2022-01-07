
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEVEL_STRIDE ;

__attribute__((used)) static inline unsigned int level_to_offset_bits(int level)
{
 return (level - 1) * LEVEL_STRIDE;
}
