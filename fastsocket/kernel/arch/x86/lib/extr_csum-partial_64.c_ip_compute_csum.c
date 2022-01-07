
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __sum16 ;


 int csum_fold (int ) ;
 int csum_partial (void const*,int,int ) ;

__sum16 ip_compute_csum(const void *buff, int len)
{
 return csum_fold(csum_partial(buff,len,0));
}
