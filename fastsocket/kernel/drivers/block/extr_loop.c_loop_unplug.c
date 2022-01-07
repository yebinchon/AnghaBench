
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct loop_device* queuedata; } ;
struct loop_device {TYPE_1__* lo_backing_file; } ;
struct TYPE_2__ {int f_mapping; } ;


 int QUEUE_FLAG_PLUGGED ;
 int blk_run_address_space (int ) ;
 int queue_flag_clear_unlocked (int ,struct request_queue*) ;

__attribute__((used)) static void loop_unplug(struct request_queue *q)
{
 struct loop_device *lo = q->queuedata;

 queue_flag_clear_unlocked(QUEUE_FLAG_PLUGGED, q);
 blk_run_address_space(lo->lo_backing_file->f_mapping);
}
