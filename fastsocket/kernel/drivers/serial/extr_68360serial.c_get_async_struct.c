
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_state {scalar_t__ info; int count; } ;
typedef int ser_info_t ;


 int ENOMEM ;
 struct serial_state* rs_table ;

__attribute__((used)) static int get_async_struct(int line, ser_info_t **ret_info)
{
 struct serial_state *sstate;

 sstate = rs_table + line;
 if (sstate->info) {
  sstate->count++;
  *ret_info = (ser_info_t *)sstate->info;
  return 0;
 }
 else {
  return -ENOMEM;
 }
}
