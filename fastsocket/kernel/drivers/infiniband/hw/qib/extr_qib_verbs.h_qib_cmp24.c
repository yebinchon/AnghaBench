
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline int qib_cmp24(u32 a, u32 b)
{
 return (((int) a) - ((int) b)) << 8;
}
