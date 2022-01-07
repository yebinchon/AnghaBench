
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int addr_conv_t ;



__attribute__((used)) static size_t scribble_len(int num)
{
 size_t len;

 len = sizeof(struct page *) * (num+2) + sizeof(addr_conv_t) * (num+2);

 return len;
}
