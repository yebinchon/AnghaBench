
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {char* name; scalar_t__ name_base; } ;


 int sprintf (char*,char*,char*,scalar_t__) ;

__attribute__((used)) static void tty_line_name(struct tty_driver *driver, int index, char *p)
{
 sprintf(p, "%s%d", driver->name, index + driver->name_base);
}
