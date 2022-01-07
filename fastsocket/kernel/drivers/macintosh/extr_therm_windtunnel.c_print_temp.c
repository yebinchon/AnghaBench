
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char const*,int,int) ;

__attribute__((used)) static void
print_temp( const char *s, int temp )
{
 printk("%s%d.%d C", s ? s : "", temp>>8, (temp & 255)*10/256 );
}
