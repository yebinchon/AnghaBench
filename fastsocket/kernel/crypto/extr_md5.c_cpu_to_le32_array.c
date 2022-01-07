
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __cpu_to_le32s (int *) ;

__attribute__((used)) static inline void cpu_to_le32_array(u32 *buf, unsigned int words)
{
 while (words--) {
  __cpu_to_le32s(buf);
  buf++;
 }
}
