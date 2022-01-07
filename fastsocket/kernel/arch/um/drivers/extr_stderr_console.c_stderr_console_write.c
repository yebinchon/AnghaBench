
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int generic_write (int,char const*,unsigned int,int *) ;

__attribute__((used)) static void stderr_console_write(struct console *console, const char *string,
     unsigned len)
{
 generic_write(2 , string, len, ((void*)0));
}
