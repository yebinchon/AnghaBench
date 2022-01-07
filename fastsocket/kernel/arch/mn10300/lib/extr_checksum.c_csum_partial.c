
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __wsum ;


 scalar_t__ do_csum (void const*,int) ;

__wsum csum_partial(const void *buff, int len, __wsum sum)
{
 __wsum result;

 result = do_csum(buff, len);
 result += sum;
 if (sum > result)
  result++;
 return result;
}
