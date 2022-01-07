
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ILSEL_LEVELS ;

__attribute__((used)) static inline unsigned int ilsel_offset(unsigned int bit)
{
 return ILSEL_LEVELS - bit - 1;
}
