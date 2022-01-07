
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;


 int copy_from_user (void*,void const*,int) ;
 int csum_partial (void*,int,int ) ;

__wsum csum_partial_copy(const void *src, void *dst, int len, __wsum sum)
{
 copy_from_user(dst, src, len);
 return csum_partial(dst, len, sum);
}
