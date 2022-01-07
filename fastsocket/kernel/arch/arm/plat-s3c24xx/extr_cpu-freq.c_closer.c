
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (unsigned int) ;

__attribute__((used)) static inline int closer(unsigned int target, unsigned int n, unsigned int c)
{
 int diff_cur = abs(target - c);
 int diff_new = abs(target - n);

 return (diff_new < diff_cur);
}
