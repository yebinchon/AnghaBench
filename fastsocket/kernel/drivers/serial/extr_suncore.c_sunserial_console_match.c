
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_driver {struct console* cons; } ;
struct device_node {int dummy; } ;
struct console {int index; int name; } ;


 int add_preferred_console (int ,int,int *) ;
 struct device_node* of_console_device ;
 char* of_console_options ;

int sunserial_console_match(struct console *con, struct device_node *dp,
       struct uart_driver *drv, int line, bool ignore_line)
{
 if (!con || of_console_device != dp)
  return 0;

 if (!ignore_line) {
  int off = 0;

  if (of_console_options &&
      *of_console_options == 'b')
   off = 1;

  if ((line & 1) != off)
   return 0;
 }

 con->index = line;
 drv->cons = con;
 add_preferred_console(con->name, line, ((void*)0));

 return 1;
}
