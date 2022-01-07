
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int ip_compute_csum (void*,unsigned int) ;

__attribute__((used)) static __u16 sd_dif_ip_fn(void *data, unsigned int len)
{
 return ip_compute_csum(data, len);
}
