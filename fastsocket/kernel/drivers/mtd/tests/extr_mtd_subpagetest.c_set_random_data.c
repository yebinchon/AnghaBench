
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char simple_rand () ;

__attribute__((used)) static void set_random_data(unsigned char *buf, size_t len)
{
 size_t i;

 for (i = 0; i < len; ++i)
  buf[i] = simple_rand();
}
