
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct mvs_slot_info {size_t tx; int cmd_size; int n_elem; scalar_t__ buf_dma; scalar_t__ buf; } ;
struct mvs_info {size_t tx_prod; int dev; scalar_t__ slot_dma; int * slot; scalar_t__ tx_dma; int * tx; struct mvs_slot_info* slot_info; } ;
struct mvs_cmd_hdr {int dummy; } ;
typedef enum sas_protocol { ____Placeholder_sas_protocol } sas_protocol ;
struct TYPE_2__ {int (* prd_size ) () ;} ;


 int KERN_DEBUG ;
 TYPE_1__* MVS_CHIP_DISP ;
 size_t MVS_CHIP_SLOT_SZ ;
 int MVS_OAF_SZ ;
 int dev_printk (int ,int ,char*,...) ;
 int mvs_hba_sb_dump (struct mvs_info*,size_t,int) ;
 int mvs_hexdump (int,int *,size_t) ;
 int stub1 () ;

__attribute__((used)) static void mvs_hba_memory_dump(struct mvs_info *mvi, u32 tag,
    enum sas_protocol proto)
{
}
