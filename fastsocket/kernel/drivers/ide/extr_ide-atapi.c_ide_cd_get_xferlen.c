
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_type; } ;






 int blk_rq_bytes (struct request*) ;

int ide_cd_get_xferlen(struct request *rq)
{
 switch (rq->cmd_type) {
 case 129:
  return 32768;
 case 128:
 case 130:
 case 131:
  return blk_rq_bytes(rq);
 default:
  return 0;
 }
}
