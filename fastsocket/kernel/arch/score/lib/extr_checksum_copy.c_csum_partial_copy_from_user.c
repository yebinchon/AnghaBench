
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int copy_from_user (char*,char const*,int) ;
 unsigned int csum_partial (char*,int,unsigned int) ;
 int memset (char*,int ,int) ;

unsigned int csum_partial_copy_from_user(const char *src, char *dst,
     int len, unsigned int sum,
     int *err_ptr)
{
 int missing;

 missing = copy_from_user(dst, src, len);
 if (missing) {
  memset(dst + len - missing, 0, missing);
  *err_ptr = -EFAULT;
 }

 return csum_partial(dst, len, sum);
}
