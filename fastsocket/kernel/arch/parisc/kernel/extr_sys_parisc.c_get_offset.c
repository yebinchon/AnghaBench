
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int PAGE_SHIFT ;

__attribute__((used)) static int get_offset(struct address_space *mapping)
{
 int offset = (unsigned long) mapping << (PAGE_SHIFT - 8);
 return offset & 0x3FF000;
}
