
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;


 int EFAULT ;
 int copy_to_user (void*,void const*,int) ;
 int csum_partial (void const*,int,int ) ;
 int memset (void*,int ,int) ;

__wsum csum_and_copy_to_user(const void *src, void *dst,
        int len, __wsum sum,
        int *err_ptr)
{
 int missing;

 missing = copy_to_user(dst, src, len);
 if (missing) {
  memset(dst + len - missing, 0, missing);
  *err_ptr = -EFAULT;
 }

 return csum_partial(src, len, sum);
}
