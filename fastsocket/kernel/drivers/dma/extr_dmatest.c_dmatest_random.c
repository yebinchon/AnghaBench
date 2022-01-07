
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int get_random_bytes (unsigned long*,int) ;

__attribute__((used)) static unsigned long dmatest_random(void)
{
 unsigned long buf;

 get_random_bytes(&buf, sizeof(buf));
 return buf;
}
