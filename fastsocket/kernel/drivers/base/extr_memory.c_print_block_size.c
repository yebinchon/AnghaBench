
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGES_PER_SECTION ;
 unsigned long PAGE_SIZE ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t
print_block_size(struct class *class, char *buf)
{
 return sprintf(buf, "%lx\n", (unsigned long)PAGES_PER_SECTION * PAGE_SIZE);
}
