
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsp_desc {int flags; int len_cq; } ;
typedef int __be32 ;


 int F_RSPD_ASYNC_NOTIF ;
 int F_RSPD_IMM_DATA_VALID ;
 int htonl (int) ;

__attribute__((used)) static inline int is_pure_response(const struct rsp_desc *r)
{
 __be32 n = r->flags & htonl(F_RSPD_ASYNC_NOTIF | F_RSPD_IMM_DATA_VALID);

 return (n | r->len_cq) == 0;
}
