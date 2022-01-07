
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {scalar_t__ state; } ;


 scalar_t__ CTP_ACTIVE_CLOSE ;

__attribute__((used)) static inline int cxgbi_sock_is_closing(struct cxgbi_sock *csk)
{
 return csk->state >= CTP_ACTIVE_CLOSE;
}
