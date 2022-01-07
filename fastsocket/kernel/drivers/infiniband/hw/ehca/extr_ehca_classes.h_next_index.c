
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int next_index(unsigned int cur_index, unsigned int limit)
{
 unsigned int temp = cur_index + 1;
 return (temp == limit) ? 0 : temp;
}
