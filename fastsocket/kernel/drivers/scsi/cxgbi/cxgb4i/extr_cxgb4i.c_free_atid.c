
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int atid; int cdev; } ;
struct cxgb4_lld_info {int tids; } ;


 int CTPF_HAS_ATID ;
 int cxgb4_free_atid (int ,int ) ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (int ) ;
 int cxgbi_sock_clear_flag (struct cxgbi_sock*,int ) ;
 scalar_t__ cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;

__attribute__((used)) static inline void free_atid(struct cxgbi_sock *csk)
{
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(csk->cdev);

 if (cxgbi_sock_flag(csk, CTPF_HAS_ATID)) {
  cxgb4_free_atid(lldi->tids, csk->atid);
  cxgbi_sock_clear_flag(csk, CTPF_HAS_ATID);
  cxgbi_sock_put(csk);
 }
}
