
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int do_test_fn ;


 int * g_do_test ;
 unsigned int g_test_ioctl ;

__attribute__((used)) static do_test_fn *_find_ioctl(unsigned cmd)
{
 if (g_test_ioctl == cmd)
  return g_do_test;
 else
  return ((void*)0);
}
