
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void sbp2util_cpu_to_be32_buffer(void *buffer, int length)
{
 u32 *temp = buffer;

 for (length = (length >> 2); length--; )
  temp[length] = cpu_to_be32(temp[length]);
}
