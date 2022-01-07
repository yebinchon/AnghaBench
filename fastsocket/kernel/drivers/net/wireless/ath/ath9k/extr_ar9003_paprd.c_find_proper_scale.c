
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int find_proper_scale(int expn, int N)
{
 return (expn > N) ? expn - 10 : 0;
}
