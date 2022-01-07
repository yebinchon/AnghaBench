
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __le32_to_cpus (int *) ;

__attribute__((used)) static inline void le32_to_cpu_array(u32 *buf, unsigned int words)
{
 while (words--) {
  __le32_to_cpus(buf);
  buf++;
 }
}
