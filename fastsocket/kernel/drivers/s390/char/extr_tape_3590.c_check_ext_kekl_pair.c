
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape390_kekl_pair {int * kekl; } ;


 int EINVAL ;
 scalar_t__ check_ext_kekl (int *) ;

__attribute__((used)) static int check_ext_kekl_pair(struct tape390_kekl_pair *kekls)
{
 if (check_ext_kekl(&kekls->kekl[0]))
  goto invalid;
 if (check_ext_kekl(&kekls->kekl[1]))
  goto invalid;

 return 0;
invalid:
 return -EINVAL;
}
