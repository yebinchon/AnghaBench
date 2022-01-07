
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int flags; int state; } ;
typedef enum cxgbi_sock_flags { ____Placeholder_cxgbi_sock_flags } cxgbi_sock_flags ;


 int CXGBI_DBG_SOCK ;
 int __clear_bit (int,int *) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int) ;

__attribute__((used)) static inline void cxgbi_sock_clear_flag(struct cxgbi_sock *csk,
     enum cxgbi_sock_flags flag)
{
 __clear_bit(flag, &csk->flags);
 log_debug(1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx, bit %d.\n",
  csk, csk->state, csk->flags, flag);
}
