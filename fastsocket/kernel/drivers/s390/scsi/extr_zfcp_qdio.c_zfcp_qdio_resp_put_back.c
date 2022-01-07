
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct zfcp_qdio_queue {int count; scalar_t__ first; } ;
struct zfcp_qdio {TYPE_1__* adapter; struct zfcp_qdio_queue resp_q; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {struct ccw_device* ccw_device; } ;


 int QDIO_FLAG_SYNC_INPUT ;
 scalar_t__ QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 unsigned int do_QDIO (struct ccw_device*,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void zfcp_qdio_resp_put_back(struct zfcp_qdio *qdio, int processed)
{
 struct zfcp_qdio_queue *queue = &qdio->resp_q;
 struct ccw_device *cdev = qdio->adapter->ccw_device;
 u8 count, start = queue->first;
 unsigned int retval;

 count = atomic_read(&queue->count) + processed;

 retval = do_QDIO(cdev, QDIO_FLAG_SYNC_INPUT, 0, start, count);

 if (unlikely(retval)) {
  atomic_set(&queue->count, count);

 } else {
  queue->first += count;
  queue->first %= QDIO_MAX_BUFFERS_PER_Q;
  atomic_set(&queue->count, 0);
 }
}
