
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int limit_entry; } ;
typedef TYPE_1__ nsp32_target ;
struct TYPE_8__ {TYPE_1__* target; void* resettime; } ;
typedef TYPE_2__ nsp32_hw_data ;


 int FALSE ;
 int KERN_WARNING ;
 int NSP32_HOST_SCSIID ;
 int TRUE ;
 scalar_t__ ULTRA20M_MODE ;
 int nsp32_msg (int ,char*) ;
 void* nsp32_prom_read (TYPE_2__*,int) ;
 int nsp32_search_period_entry (TYPE_2__*,TYPE_1__*,int) ;
 scalar_t__ trans_mode ;

__attribute__((used)) static int nsp32_getprom_at24(nsp32_hw_data *data)
{
 int ret, i;
 int auto_sync;
 nsp32_target *target;
 int entry;






 data->resettime = nsp32_prom_read(data, 0x12);
 ret = nsp32_prom_read(data, 0x07);
 switch (ret) {
 case 0:
  auto_sync = TRUE;
  break;
 case 1:
  auto_sync = FALSE;
  break;
 default:
  nsp32_msg(KERN_WARNING,
     "Unsupported Auto Sync mode. Fall back to manual mode.");
  auto_sync = TRUE;
 }

 if (trans_mode == ULTRA20M_MODE) {
  auto_sync = TRUE;
 }




 for (i = 0; i < NSP32_HOST_SCSIID; i++) {
  target = &data->target[i];
  if (auto_sync == TRUE) {
   target->limit_entry = 0;
  } else {
   ret = nsp32_prom_read(data, i);
   entry = nsp32_search_period_entry(data, target, ret);
   if (entry < 0) {

    entry = 0;
   }
   target->limit_entry = entry;
  }
 }

 return TRUE;
}
