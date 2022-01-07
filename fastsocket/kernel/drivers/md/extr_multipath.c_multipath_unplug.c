
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queuedata; } ;


 int unplug_slaves (int ) ;

__attribute__((used)) static void multipath_unplug(struct request_queue *q)
{
 unplug_slaves(q->queuedata);
}
