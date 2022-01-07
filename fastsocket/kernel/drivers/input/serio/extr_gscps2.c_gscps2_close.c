
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct gscps2port* port_data; } ;
struct gscps2port {int dummy; } ;


 int DISABLE ;
 int gscps2_enable (struct gscps2port*,int ) ;

__attribute__((used)) static void gscps2_close(struct serio *port)
{
 struct gscps2port *ps2port = port->port_data;
 gscps2_enable(ps2port, DISABLE);
}
