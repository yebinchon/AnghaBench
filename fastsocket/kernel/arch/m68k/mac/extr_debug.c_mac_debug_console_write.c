
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int mac_serial_print (char const*) ;

__attribute__((used)) static void mac_debug_console_write(struct console *co, const char *str,
        unsigned int count)
{
 mac_serial_print(str);
}
