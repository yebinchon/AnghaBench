
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ make_request_fn; struct mapped_device* queuedata; int merge_bvec_fn; } ;
struct mapped_device {int flags; } ;


 int DMF_MERGE_IS_OPTIONAL ;
 scalar_t__ dm_request ;
 scalar_t__ test_bit (int ,int *) ;

int dm_queue_merge_is_compulsory(struct request_queue *q)
{
 struct mapped_device *dev_md;

 if (!q->merge_bvec_fn)
  return 0;

 if (q->make_request_fn == dm_request) {
  dev_md = q->queuedata;
  if (test_bit(DMF_MERGE_IS_OPTIONAL, &dev_md->flags))
   return 0;
 }

 return 1;
}
