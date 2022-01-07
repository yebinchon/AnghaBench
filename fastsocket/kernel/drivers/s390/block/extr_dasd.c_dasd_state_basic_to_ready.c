
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {void* state; struct dasd_block* block; } ;
struct dasd_block {int blocks; int s2b_shift; int gdp; TYPE_2__* base; } ;
struct TYPE_4__ {TYPE_1__* discipline; } ;
struct TYPE_3__ {int (* do_analysis ) (struct dasd_block*) ;} ;


 void* DASD_STATE_BASIC ;
 void* DASD_STATE_READY ;
 void* DASD_STATE_UNFMT ;
 int EAGAIN ;
 int dasd_scan_partitions (struct dasd_block*) ;
 int dasd_setup_queue (struct dasd_block*) ;
 int set_capacity (int ,int) ;
 int stub1 (struct dasd_block*) ;

__attribute__((used)) static int dasd_state_basic_to_ready(struct dasd_device *device)
{
 int rc;
 struct dasd_block *block;

 rc = 0;
 block = device->block;

 if (block) {
  if (block->base->discipline->do_analysis != ((void*)0))
   rc = block->base->discipline->do_analysis(block);
  if (rc) {
   if (rc != -EAGAIN)
    device->state = DASD_STATE_UNFMT;
   return rc;
  }
  dasd_setup_queue(block);
  set_capacity(block->gdp,
        block->blocks << block->s2b_shift);
  device->state = DASD_STATE_READY;
  rc = dasd_scan_partitions(block);
  if (rc)
   device->state = DASD_STATE_BASIC;
 } else {
  device->state = DASD_STATE_READY;
 }
 return rc;
}
