
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct nvme_ns {TYPE_2__* queue; } ;
struct TYPE_4__ {int max_discard_sectors; void* discard_granularity; void* discard_alignment; scalar_t__ discard_zeroes_data; } ;
struct TYPE_5__ {TYPE_1__ limits; } ;


 int QUEUE_FLAG_DISCARD ;
 int queue_flag_set_unlocked (int ,TYPE_2__*) ;
 void* queue_logical_block_size (TYPE_2__*) ;

__attribute__((used)) static void nvme_config_discard(struct nvme_ns *ns)
{
 u32 logical_block_size = queue_logical_block_size(ns->queue);
 ns->queue->limits.discard_zeroes_data = 0;
 ns->queue->limits.discard_alignment = logical_block_size;
 ns->queue->limits.discard_granularity = logical_block_size;
 ns->queue->limits.max_discard_sectors = 0xffffffff;
 queue_flag_set_unlocked(QUEUE_FLAG_DISCARD, ns->queue);
}
