
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int do_test_fn ;


 int EINVAL ;
 int * g_do_test ;
 unsigned int g_test_ioctl ;

int osduld_register_test(unsigned ioctl, do_test_fn *do_test)
{
 if (g_test_ioctl)
  return -EINVAL;

 g_test_ioctl = ioctl;
 g_do_test = do_test;
 return 0;
}
