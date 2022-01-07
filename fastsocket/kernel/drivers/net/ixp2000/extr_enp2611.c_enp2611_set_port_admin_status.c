
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caleb_disable_rx (int) ;
 int caleb_disable_tx (int) ;
 int caleb_enable_rx (int) ;
 int pm3386_disable_rx (int) ;
 int pm3386_disable_tx (int) ;
 int pm3386_enable_rx (int) ;
 int pm3386_set_carrier (int,int) ;

__attribute__((used)) static void enp2611_set_port_admin_status(int port, int up)
{
 if (up) {
  caleb_enable_rx(port);

  pm3386_set_carrier(port, 1);
  pm3386_enable_rx(port);
 } else {
  caleb_disable_tx(port);
  pm3386_disable_tx(port);

  pm3386_set_carrier(port, 0);

  pm3386_disable_rx(port);
  caleb_disable_rx(port);
 }
}
