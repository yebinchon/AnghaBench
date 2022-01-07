
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;
struct request_queue {scalar_t__ queuedata; } ;


 int BUG_ON (int ) ;
 int DBF_LH (int,char*,struct tape_device*) ;
 int tapeblock_trigger_requeue (struct tape_device*) ;

__attribute__((used)) static void
tapeblock_request_fn(struct request_queue *queue)
{
 struct tape_device *device;

 device = (struct tape_device *) queue->queuedata;
 DBF_LH(6, "tapeblock_request_fn(device=%p)\n", device);
 BUG_ON(device == ((void*)0));
 tapeblock_trigger_requeue(device);
}
