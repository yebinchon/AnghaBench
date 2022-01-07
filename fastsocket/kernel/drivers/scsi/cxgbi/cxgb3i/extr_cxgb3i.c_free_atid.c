
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxgbi_sock {int atid; TYPE_1__* cdev; } ;
struct TYPE_2__ {int lldev; } ;


 int CTPF_HAS_ATID ;
 int cxgb3_free_atid (int ,int ) ;
 int cxgbi_sock_clear_flag (struct cxgbi_sock*,int ) ;
 scalar_t__ cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;

__attribute__((used)) static inline void free_atid(struct cxgbi_sock *csk)
{
 if (cxgbi_sock_flag(csk, CTPF_HAS_ATID)) {
  cxgb3_free_atid(csk->cdev->lldev, csk->atid);
  cxgbi_sock_clear_flag(csk, CTPF_HAS_ATID);
  cxgbi_sock_put(csk);
 }
}
