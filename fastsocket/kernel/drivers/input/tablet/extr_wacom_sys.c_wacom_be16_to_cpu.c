
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;

__u16 wacom_be16_to_cpu(unsigned char *data)
{
 __u16 value;
 value = be16_to_cpu(*(__be16 *) data);
 return value;
}
