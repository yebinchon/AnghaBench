
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int cpp_mux (struct parport*,int) ;

__attribute__((used)) static int mux_present(struct parport *port)
{
 return cpp_mux(port, 0x51) == 3;
}
