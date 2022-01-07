
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PARPORT_MAX ;
 int parport_ieee1284_wakeup (int ) ;
 int * port_from_cookie ;

__attribute__((used)) static void timeout_waiting_on_port (unsigned long cookie)
{
 parport_ieee1284_wakeup (port_from_cookie[cookie % PARPORT_MAX]);
}
