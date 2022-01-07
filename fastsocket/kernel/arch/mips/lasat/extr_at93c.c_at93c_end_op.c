
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cs; } ;


 TYPE_1__* at93c ;
 int at93c_reg_read () ;
 int at93c_reg_write (int) ;
 int lasat_ndelay (int) ;

__attribute__((used)) static void at93c_end_op(void)
{
 at93c_reg_write(at93c_reg_read() & ~at93c->cs);
 lasat_ndelay(250);
}
