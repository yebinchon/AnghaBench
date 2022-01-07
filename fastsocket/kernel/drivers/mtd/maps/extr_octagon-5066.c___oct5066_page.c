
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef int __u8 ;


 int PAGE_IO ;
 int outb (int ,int ) ;
 int page_n_dev ;

__attribute__((used)) static void __oct5066_page(struct map_info *map, __u8 byte)
{
 outb(byte,PAGE_IO);
 page_n_dev = byte;
}
