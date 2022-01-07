
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int * wr_pending_tail; int wr_pending_head; } ;



__attribute__((used)) static inline void cxgbi_sock_reset_wr_list(struct cxgbi_sock *csk)
{
 csk->wr_pending_head = csk->wr_pending_tail = ((void*)0);
}
