
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct gendisk {int dummy; } ;


 int GPCMD_START_STOP_UNIT ;
 int __blk_send_generic (struct request_queue*,struct gendisk*,int ,int) ;

__attribute__((used)) static inline int blk_send_start_stop(struct request_queue *q,
          struct gendisk *bd_disk, int data)
{
 return __blk_send_generic(q, bd_disk, GPCMD_START_STOP_UNIT, data);
}
