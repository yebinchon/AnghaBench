
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int state; int flags; } ;


 int CXGBI_DBG_SOCK ;
 int log_debug (int,char*,struct cxgbi_sock*,int,int ,int) ;

__attribute__((used)) static inline void cxgbi_sock_set_state(struct cxgbi_sock *csk, int state)
{
 log_debug(1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx, state -> %u.\n",
  csk, csk->state, csk->flags, state);
 csk->state = state;
}
