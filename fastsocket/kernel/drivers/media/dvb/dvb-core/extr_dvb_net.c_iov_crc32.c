
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {int iov_len; int iov_base; } ;
typedef int __u32 ;


 int crc32_be (int ,int ,int ) ;

__attribute__((used)) static inline __u32 iov_crc32( __u32 c, struct kvec *iov, unsigned int cnt )
{
 unsigned int j;
 for (j = 0; j < cnt; j++)
  c = crc32_be( c, iov[j].iov_base, iov[j].iov_len );
 return c;
}
