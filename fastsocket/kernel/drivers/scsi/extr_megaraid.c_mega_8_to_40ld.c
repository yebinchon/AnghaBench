
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int * pdrv_state; } ;
struct TYPE_11__ {int * ldrv_state; int * ldrv_prop; int * ldrv_size; int num_ldrv; } ;
struct TYPE_10__ {int dram_size; int cache_flush_interval; int * bios_version; int * fw_version; int nchannels; int rebuild_rate; int max_commands; } ;
struct TYPE_13__ {TYPE_3__ pdrv_info; TYPE_2__ logdrv_info; TYPE_1__ adapter_info; } ;
typedef TYPE_4__ mraid_inquiry ;
struct TYPE_14__ {int dram_size; int * bios_version; int * fw_version; int nchannels; int max_commands; } ;
typedef TYPE_5__ mega_product_info ;
struct TYPE_15__ {int * pdrv_state; int * ldrv_state; int * ldrv_prop; int * ldrv_size; int num_ldrv; int cache_flush_interval; int rebuild_rate; } ;
typedef TYPE_6__ mega_inquiry3 ;


 int MAX_LOGICAL_DRIVES_8LD ;
 int MAX_PHYSICAL_DRIVES ;

__attribute__((used)) static void
mega_8_to_40ld(mraid_inquiry *inquiry, mega_inquiry3 *enquiry3,
  mega_product_info *product_info)
{
 int i;

 product_info->max_commands = inquiry->adapter_info.max_commands;
 enquiry3->rebuild_rate = inquiry->adapter_info.rebuild_rate;
 product_info->nchannels = inquiry->adapter_info.nchannels;

 for (i = 0; i < 4; i++) {
  product_info->fw_version[i] =
   inquiry->adapter_info.fw_version[i];

  product_info->bios_version[i] =
   inquiry->adapter_info.bios_version[i];
 }
 enquiry3->cache_flush_interval =
  inquiry->adapter_info.cache_flush_interval;

 product_info->dram_size = inquiry->adapter_info.dram_size;

 enquiry3->num_ldrv = inquiry->logdrv_info.num_ldrv;

 for (i = 0; i < MAX_LOGICAL_DRIVES_8LD; i++) {
  enquiry3->ldrv_size[i] = inquiry->logdrv_info.ldrv_size[i];
  enquiry3->ldrv_prop[i] = inquiry->logdrv_info.ldrv_prop[i];
  enquiry3->ldrv_state[i] = inquiry->logdrv_info.ldrv_state[i];
 }

 for (i = 0; i < (MAX_PHYSICAL_DRIVES); i++)
  enquiry3->pdrv_state[i] = inquiry->pdrv_info.pdrv_state[i];
}
