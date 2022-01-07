
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sbal_state; struct qaob** aobs; } ;
struct TYPE_6__ {TYPE_2__ out; } ;
struct qdio_q {TYPE_3__ u; } ;
struct qaob {int dummy; } ;
struct TYPE_4__ {int * aob; int flags; } ;


 int BUG_ON (int ) ;
 int QDIO_OUTBUF_STATE_FLAG_PENDING ;
 unsigned char SLSB_P_OUTPUT_EMPTY ;
 unsigned char SLSB_P_OUTPUT_PENDING ;
 scalar_t__ contains_aobs (struct qdio_q*) ;
 int get_buf_state (struct qdio_q*,int,unsigned char*,int ) ;
 int next_buf (int) ;

__attribute__((used)) static inline void qdio_handle_aobs(struct qdio_q *q, int start, int count)
{
 if (contains_aobs(q)) {
  int j;
  int b = start;
  unsigned char state = 0;

  for (j = 0; j < count; ++j) {
   get_buf_state(q, b, &state, 0);
   if (state == SLSB_P_OUTPUT_PENDING) {
    struct qaob *aob = q->u.out.aobs[b];
    if (aob == ((void*)0))
     continue;

    BUG_ON(q->u.out.sbal_state == ((void*)0));
    q->u.out.sbal_state[b].flags |=
     QDIO_OUTBUF_STATE_FLAG_PENDING;
    q->u.out.aobs[b] = ((void*)0);
   } else if (state == SLSB_P_OUTPUT_EMPTY) {
    BUG_ON(q->u.out.sbal_state == ((void*)0));
    q->u.out.sbal_state[b].aob = ((void*)0);
   }

   b = next_buf(b);
  }
 }
}
