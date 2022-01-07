
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; } ;


 scalar_t__ REQ_TYPE_BLOCK_PC ;
 scalar_t__ REQ_TYPE_FS ;
 int ide_cdrom_prep_fs (struct request_queue*,struct request*) ;
 int ide_cdrom_prep_pc (struct request*) ;

__attribute__((used)) static int ide_cdrom_prep_fn(struct request_queue *q, struct request *rq)
{
 if (rq->cmd_type == REQ_TYPE_FS)
  return ide_cdrom_prep_fs(q, rq);
 else if (rq->cmd_type == REQ_TYPE_BLOCK_PC)
  return ide_cdrom_prep_pc(rq);

 return 0;
}
