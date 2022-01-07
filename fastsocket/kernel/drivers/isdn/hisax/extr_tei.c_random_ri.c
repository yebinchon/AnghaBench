
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;


 int get_random_bytes (unsigned int*,int) ;

__attribute__((used)) static unsigned int
random_ri(void)
{
 unsigned int x;

 get_random_bytes(&x, sizeof(x));
 return (x & 0xffff);
}
