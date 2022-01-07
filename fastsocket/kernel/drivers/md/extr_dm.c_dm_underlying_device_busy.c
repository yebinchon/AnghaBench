
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_lld_busy (struct request_queue*) ;

int dm_underlying_device_busy(struct request_queue *q)
{
 return blk_lld_busy(q);
}
