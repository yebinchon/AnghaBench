
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int cpu_to_be16 (int ) ;
 int crc_t10dif (void*,unsigned int) ;

__attribute__((used)) static __u16 sd_dif_crc_fn(void *data, unsigned int len)
{
 return cpu_to_be16(crc_t10dif(data, len));
}
