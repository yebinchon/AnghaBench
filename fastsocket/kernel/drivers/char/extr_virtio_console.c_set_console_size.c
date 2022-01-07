
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_3__ {void* ws_col; void* ws_row; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;
struct port {TYPE_2__ cons; } ;


 int is_console_port (struct port*) ;

__attribute__((used)) static void set_console_size(struct port *port, u16 rows, u16 cols)
{
 if (!port || !is_console_port(port))
  return;

 port->cons.ws.ws_row = rows;
 port->cons.ws.ws_col = cols;
}
