
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {int last_move; TYPE_2__ u; int irq_ptr; scalar_t__ qdio_error; } ;


 int MACHINE_IS_VM ;
 int get_inbound_buffer_frontier (struct qdio_q*) ;
 int get_usecs () ;
 int is_thinint_irq (int ) ;

__attribute__((used)) static int qdio_inbound_q_moved(struct qdio_q *q)
{
 int bufnr;

 bufnr = get_inbound_buffer_frontier(q);

 if ((bufnr != q->last_move) || q->qdio_error) {
  q->last_move = bufnr;
  if (!is_thinint_irq(q->irq_ptr) && !MACHINE_IS_VM)
   q->u.in.timestamp = get_usecs();
  return 1;
 } else
  return 0;
}
