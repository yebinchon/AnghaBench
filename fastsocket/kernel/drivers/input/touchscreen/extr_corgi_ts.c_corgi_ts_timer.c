
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgi_ts {int dummy; } ;


 int ts_interrupt_main (struct corgi_ts*,int) ;

__attribute__((used)) static void corgi_ts_timer(unsigned long data)
{
 struct corgi_ts *corgits_data = (struct corgi_ts *) data;

 ts_interrupt_main(corgits_data, 1);
}
