
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union c2wr {int dummy; } c2wr ;
typedef int u32 ;
struct c2_qp {int dummy; } ;
struct c2_mq {int dummy; } ;
struct TYPE_2__ {int magic; } ;
typedef TYPE_1__ c2wr_hdr_t ;


 int CCERR_PENDING ;
 int CCWR_MAGIC ;
 int EINVAL ;
 union c2wr* c2_mq_alloc (struct c2_mq*) ;
 int c2_mq_produce (struct c2_mq*) ;
 int c2_wr_set_result (union c2wr*,int ) ;
 int cpu_to_be32 (int ) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static int qp_wr_post(struct c2_mq *q, union c2wr * wr, struct c2_qp *qp, u32 size)
{
 union c2wr *msg;

 msg = c2_mq_alloc(q);
 if (msg == ((void*)0)) {
  return -EINVAL;
 }
 c2_wr_set_result(wr, CCERR_PENDING);




 memcpy((void *) msg, (void *) wr, size);

 c2_mq_produce(q);
 return 0;
}
