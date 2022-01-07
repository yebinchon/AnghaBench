
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mn10300_serial_port {int* tx_icr; } ;


 int GxICR_ENABLE ;
 int GxICR_LEVEL_1 ;

__attribute__((used)) static void mn10300_serial_en_tx_intr(struct mn10300_serial_port *port)
{
 u16 x;
 *port->tx_icr = GxICR_LEVEL_1 | GxICR_ENABLE;
 x = *port->tx_icr;
}
