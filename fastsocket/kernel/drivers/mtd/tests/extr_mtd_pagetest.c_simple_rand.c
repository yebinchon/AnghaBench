
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int next ;

__attribute__((used)) static inline unsigned int simple_rand(void)
{
 next = next * 1103515245 + 12345;
 return (unsigned int)((next / 65536) % 32768);
}
