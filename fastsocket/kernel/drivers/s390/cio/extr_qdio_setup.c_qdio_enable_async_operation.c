
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_output_q {int use_cq; int aobs; } ;
struct qaob {int dummy; } ;


 int GFP_ATOMIC ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int kzalloc (int,int ) ;

int qdio_enable_async_operation(struct qdio_output_q *q)
{
 int rc;
 int use_cq;

 rc = 0;
 use_cq = 1;
 q->aobs = kzalloc(sizeof(struct qaob *) * QDIO_MAX_BUFFERS_PER_Q,
     GFP_ATOMIC);
 if (!q->aobs) {
  use_cq = 0;
  rc = -1;
  goto out;
 }

out:
 q->use_cq = use_cq;
 return rc;
}
