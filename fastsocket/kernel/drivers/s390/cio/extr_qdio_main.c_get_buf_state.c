
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int get_buf_states (struct qdio_q*,unsigned int,unsigned char*,int,int,int ) ;

__attribute__((used)) static inline int get_buf_state(struct qdio_q *q, unsigned int bufnr,
    unsigned char *state, int auto_ack)
{
 return get_buf_states(q, bufnr, state, 1, auto_ack, 0);
}
