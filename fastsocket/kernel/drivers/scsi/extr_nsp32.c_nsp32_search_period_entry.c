
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int limit_entry; } ;
typedef TYPE_2__ nsp32_target ;
struct TYPE_8__ {int syncnum; TYPE_1__* synct; } ;
typedef TYPE_3__ nsp32_hw_data ;
struct TYPE_6__ {unsigned char start_period; unsigned char end_period; } ;


 int KERN_ERR ;
 int nsp32_msg (int ,char*) ;

__attribute__((used)) static int nsp32_search_period_entry(nsp32_hw_data *data,
         nsp32_target *target,
         unsigned char period)
{
 int i;

 if (target->limit_entry >= data->syncnum) {
  nsp32_msg(KERN_ERR, "limit_entry exceeds syncnum!");
  target->limit_entry = 0;
 }

 for (i = target->limit_entry; i < data->syncnum; i++) {
  if (period >= data->synct[i].start_period &&
      period <= data->synct[i].end_period) {
    break;
  }
 }





 if (i == data->syncnum) {
  i = -1;
 }

 return i;
}
