
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ hweight32 (int ) ;

__attribute__((used)) static int count_bits32(uint32_t *addr, unsigned size)
{
 int count = 0, i;

 for (i = 0; i < size; i++) {
  count += hweight32(*(addr+i));
 }
 return count;
}
