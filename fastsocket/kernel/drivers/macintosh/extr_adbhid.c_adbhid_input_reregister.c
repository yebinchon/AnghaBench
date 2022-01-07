
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {TYPE_2__* input; } ;
struct TYPE_4__ {int product; } ;
struct TYPE_5__ {TYPE_1__ id; } ;


 TYPE_3__** adbhid ;
 int adbhid_input_register (int,int,int,int,int) ;
 int adbhid_input_unregister (int) ;

__attribute__((used)) static u16
adbhid_input_reregister(int id, int default_id, int org_handler_id,
   int cur_handler_id, int mk)
{
 if (adbhid[id]) {
  if (adbhid[id]->input->id.product !=
      ((id << 12)|(default_id << 8)|org_handler_id)) {
   adbhid_input_unregister(id);
   adbhid_input_register(id, default_id, org_handler_id,
           cur_handler_id, mk);
  }
 } else
  adbhid_input_register(id, default_id, org_handler_id,
          cur_handler_id, mk);
 return 1<<id;
}
