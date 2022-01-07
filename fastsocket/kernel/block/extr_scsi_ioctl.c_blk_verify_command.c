
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int sgio_type; } ;
struct blk_cmd_filter {int* read_ok; int* write_ok; } ;
typedef scalar_t__ fmode_t ;


 int CAP_SYS_RAWIO ;
 int EPERM ;
 struct blk_cmd_filter blk_default_cmd_filter ;
 scalar_t__ blk_queue_unpriv_sgio (struct request_queue*) ;
 scalar_t__ capable (int ) ;

int blk_verify_command(struct request_queue *q,
         unsigned char *cmd, fmode_t has_write_perm)
{
 struct blk_cmd_filter *filter = &blk_default_cmd_filter;


 if (capable(CAP_SYS_RAWIO) || blk_queue_unpriv_sgio(q))
  return 0;


 if (filter->read_ok[cmd[0]] & (1 << q->sgio_type))
  return 0;


 if (has_write_perm && filter->write_ok[cmd[0]] & (1 << q->sgio_type))
  return 0;

 return -EPERM;
}
