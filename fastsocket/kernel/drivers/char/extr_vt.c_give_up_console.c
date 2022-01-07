
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consw {int dummy; } ;


 int unregister_con_driver (struct consw const*) ;

void give_up_console(const struct consw *csw)
{
 unregister_con_driver(csw);
}
