
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__u16 wacom_le16_to_cpu(unsigned char *data)
{
 __u16 value;
 value = le16_to_cpu(*(__le16 *) data);
 return value;
}
