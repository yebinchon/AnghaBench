
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_console_data {int (* putc ) (int ) ;} ;
struct TYPE_2__ {struct serial_console_data* data; } ;


 TYPE_1__ console_ops ;
 int stub1 (int ) ;

__attribute__((used)) static void serial_write(const char *buf, int len)
{
 struct serial_console_data *scdp = console_ops.data;

 while (*buf != '\0')
  scdp->putc(*buf++);
}
