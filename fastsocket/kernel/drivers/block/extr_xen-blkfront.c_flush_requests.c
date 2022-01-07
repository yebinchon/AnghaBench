
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkfront_info {int irq; int ring; } ;


 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (int *,int) ;
 int notify_remote_via_irq (int ) ;

__attribute__((used)) static inline void flush_requests(struct blkfront_info *info)
{
 int notify;

 RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(&info->ring, notify);

 if (notify)
  notify_remote_via_irq(info->irq);
}
