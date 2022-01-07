
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_do_test ;
 unsigned int g_test_ioctl ;

void osduld_unregister_test(unsigned ioctl)
{
 if (ioctl == g_test_ioctl) {
  g_test_ioctl = 0;
  g_do_test = ((void*)0);
 }
}
