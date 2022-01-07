
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;


 scalar_t__ do_csum (void const*,int) ;

__wsum csum_partial(const void *buff, int len, __wsum sum)
{





 sum = (sum & 0xffff) + (sum >> 16);

 sum += do_csum(buff, len);

 sum = (sum & 0xffff) + (sum >> 16);

 return sum;
}
