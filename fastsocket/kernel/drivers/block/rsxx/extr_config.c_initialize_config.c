
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ latency; scalar_t__ count; int mode; } ;
struct TYPE_6__ {int cache_order; TYPE_1__ intr_coal; int vendor_id; void* stripe_size; void* block_size; } ;
struct TYPE_5__ {int version; } ;
struct rsxx_card_cfg {TYPE_3__ data; TYPE_2__ hdr; } ;


 int RSXX_CFG_VERSION ;
 void* RSXX_HW_BLK_SIZE ;
 int RSXX_INTR_COAL_DISABLED ;
 int RSXX_VENDOR_ID_IBM ;

__attribute__((used)) static void initialize_config(struct rsxx_card_cfg *cfg)
{
 cfg->hdr.version = RSXX_CFG_VERSION;

 cfg->data.block_size = RSXX_HW_BLK_SIZE;
 cfg->data.stripe_size = RSXX_HW_BLK_SIZE;
 cfg->data.vendor_id = RSXX_VENDOR_ID_IBM;
 cfg->data.cache_order = (-1);
 cfg->data.intr_coal.mode = RSXX_INTR_COAL_DISABLED;
 cfg->data.intr_coal.count = 0;
 cfg->data.intr_coal.latency = 0;
}
