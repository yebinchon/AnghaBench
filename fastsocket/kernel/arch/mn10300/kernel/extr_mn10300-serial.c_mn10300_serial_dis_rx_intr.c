
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mn10300_serial_port {int* rx_icr; } ;


 int GxICR_DETECT ;
 int GxICR_LEVEL_1 ;

__attribute__((used)) static void mn10300_serial_dis_rx_intr(struct mn10300_serial_port *port)
{
 u16 x;
 *port->rx_icr = GxICR_LEVEL_1 | GxICR_DETECT;
 x = *port->rx_icr;
}
