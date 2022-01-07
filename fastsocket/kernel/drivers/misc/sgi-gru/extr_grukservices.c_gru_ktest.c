
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int gru_free_kernel_contexts () ;
 int quicktest0 (unsigned long) ;
 int quicktest1 (unsigned long) ;
 int quicktest2 (unsigned long) ;
 int quicktest3 (unsigned long) ;

int gru_ktest(unsigned long arg)
{
 int ret = -EINVAL;

 switch (arg & 0xff) {
 case 0:
  ret = quicktest0(arg);
  break;
 case 1:
  ret = quicktest1(arg);
  break;
 case 2:
  ret = quicktest2(arg);
  break;
 case 3:
  ret = quicktest3(arg);
  break;
 case 99:
  ret = gru_free_kernel_contexts();
  break;
 }
 return ret;

}
