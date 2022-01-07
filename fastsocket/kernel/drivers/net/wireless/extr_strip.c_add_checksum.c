
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int * hextable ;

__attribute__((used)) static __u8 *add_checksum(__u8 * buffer, __u8 * end)
{
 __u16 sum = 0;
 __u8 *p = buffer;
 while (p < end)
  sum += *p++;
 end[3] = hextable[sum & 0xF];
 sum >>= 4;
 end[2] = hextable[sum & 0xF];
 sum >>= 4;
 end[1] = hextable[sum & 0xF];
 sum >>= 4;
 end[0] = hextable[sum & 0xF];
 return (end + 4);
}
