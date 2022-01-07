
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 md_csum_fold(u32 csum)
{
 csum = (csum & 0xffff) + (csum >> 16);
 return (csum & 0xffff) + (csum >> 16);
}
